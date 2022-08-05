#include "wrappers.h"

//const char act_ptr[] __attribute__((section(".debugtex"))) = "CRunningScript::Proccess - CurrentIP pointer: 0x%x - Opcode: %04x\n";

int CRunningScript_Process(CRunningScript *thread)
{

	asm __volatile__ (
	"sq      $s0, 0x50($sp)    \n"
	: : :
	);

    void *v2; // eax
    bool v3; // zf
    WORD v4; // ax
    BYTE *v5; // ecx
    WORD opcode; // eax
	int* CommandsExecuted = (int*)0x66B53C;

    if ( thread->SceneSkipIP && CCutsceneMgr_IsCutsceneSkipButtonBeingPressed() )
    {
        _StyledText_2[0] = 0;
        v2 = thread->SceneSkipIP;
        if ( (int)v2 >= 0 )
            thread->CurrentIP = (BYTE*)&CTheScripts_ScriptSpace + (DWORD)v2;
        else
            thread->CurrentIP = (BYTE*)((DWORD)thread->BaseIP - (DWORD)v2);
        thread->SceneSkipIP = 0;
        thread->WakeTime = 0;
    }
    if ( thread->bUseMissionCleanup )
        CRunningScript_DoDeatharrestCheck(thread);
    if ( thread->bIsMission && *CTheScripts_FailCurrentMission == 1 )
    {
        v3 = thread->SP == 1;
        if ( thread->SP > 1u )
        {
            v4 = thread->SP;
            do
                --v4;
            while ( v4 > 1u );
            thread->SP = v4;
            v3 = v4 == 1;
        }
        if ( v3 )
        {
            thread->SP = 0;
            thread->CurrentIP = thread->Stack[offsetof(CRunningScript, Previous)];
        }
    }
    CTheScripts_ReinitialiseSwitchStatementData();
    if ( *CTimer_m_snTimeInMilliseconds >= thread->WakeTime )
    {
		
        do
        {
			++*CommandsExecuted;
            v5 = thread->CurrentIP;

			uint32_t align_diff = (DWORD)v5 % 4;
			DWORD aligned_addr = (DWORD)v5;

			if(align_diff > 0){
				aligned_addr = ((DWORD)aligned_addr - align_diff);
				opcode = (WORD)(*(uint32_t*)(aligned_addr) >> (8*align_diff));
				opcode += (WORD)(*(uint32_t*)(aligned_addr+4) << (8*(4-align_diff)));
			} else {
				opcode = *(WORD*)v5;
			}

			//printf(act_ptr, v5, opcode);

            thread->CurrentIP = (BYTE*)(v5 + 2);
            thread->NotFlag = (opcode & 0x8000) != 0;
        }
        while ( !opcodeHandlerTable[opcode / 100](thread, opcode) );
    }

	asm __volatile__ (
	"lq      $s0, 0x50($sp)    \n"
	: : :
	);

	return 0;
}