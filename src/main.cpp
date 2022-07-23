/*
# _____     ___ ____     ___ ____
#  ____|   |    ____|   |        | |____|
# |     ___|   |____ ___|    ____| |    \    PS2DEV Open Source Project.
#-----------------------------------------------------------------------
# Copyright 2001-2004, ps2dev - http://www.ps2dev.org
# Licenced under Academic Free License version 2.0
# Review ps2sdk README & LICENSE files for further details.
*/

#include <cstdint>
#include <math.h>
#include <ctype.h>

#include "stdwrappers.h"

typedef uint64_t QWORD;
typedef uint8_t BYTE;
typedef uint16_t WORD;
typedef uint32_t DWORD;
typedef uint64_t QWORD;

#include "CTheScripts.h"

#define OR_CONTINUE 0

SCRIPT_VAR opcodeParams[35] __attribute__((section(".opcodeparams")));

void  __attribute__((section(".setparams"))) SetScriptParams(CRunningScript *thread, int count){ count ++; return; }
void  __attribute__((section(".getparams"))) GetScriptParams(CRunningScript *thread, int count){ return; }
void  __attribute__((section(".getstrparam")))  GetScriptStringParam(CRunningScript *thread, char *ptr, uint8_t len){ return; }
inline SCRIPT_VAR*  __attribute__((section(".getparamptr"))) GetScriptParamPointer(CRunningScript *thread, int count){ return (SCRIPT_VAR*)0xCAFE; }

inline void SkipUnusedParameters(CRunningScript *thread)
{
	while (*thread->GetBytePointer()) GetScriptParams(thread, 1);	// skip parameters
	thread->ReadDataByte();
}

char *readString(CRunningScript *thread, char* buf = nullptr, uint8_t size = 0)
{
    auto paramType = *thread->GetBytePointer();
    if (!paramType) return nullptr;
    if (paramType >= 1 && paramType <= 8)
    {
        // process parameter as a pointer to string
        GetScriptParams(thread, 1);
        if (buf != nullptr)
        {
            size = size > 128 || !size ? 128 : size;
            strncpy(buf, opcodeParams[0].pcParam, size - 1);
            buf[size - 1] = 0;
        }
        return opcodeParams[0].pcParam;
    }
    else
    {
        // process as scm string
        if (!buf)
        {
            static char result[128];
            memset(result, 0, 128);
            GetScriptStringParam(thread, result, 128);
            return result;
        }
        else
        {
            size = size > 128 || !size ? 128 : size;
            memset(buf, 0, size);
            GetScriptStringParam(thread, buf, size);
            return buf;
        }
    }
}

	int format(CRunningScript *thread, char *str, size_t len, const char *format)
	{
		unsigned int written = 0;
		const char *iter = format;
		char bufa[256], fmtbufa[64], *fmta;

		while (*iter)
		{
			while (*iter && *iter != '%')
			{
				if (written++ >= len)
					return -1;
				*str++ = *iter++;
			}
			if (*iter == '%')
			{
				if (iter[1] == '%')
				{
					if (written++ >= len)
						return -1;
					*str++ = '%'; /* "%%"->'%' */
					iter += 2;
					continue;
				}

				//get flags and width specifier
				fmta = fmtbufa;
				*fmta++ = *iter++;
				while (*iter == '0' ||
					   *iter == '+' ||
					   *iter == '-' ||
					   *iter == ' ' ||
					   *iter == '*' ||
					   *iter == '#')
				{
					if (*iter == '*')
					{
						char *buffiter = bufa;
						//get width
						GetScriptParams(thread, 1);
					    itoa(opcodeParams[0].dwParam, buffiter, 10);
						while (*buffiter)
							*fmta++ = *buffiter++;
					}
					else
						*fmta++ = *iter;
					iter++;
				}

				//get immidiate width value
				while (isdigit(*iter))
					*fmta++ = *iter++;

				//get precision
				if (*iter == '.')
				{
					*fmta++ = *iter++;
					if (*iter == '*')
					{
						char *buffiter = bufa;
						GetScriptParams(thread, 1);
						itoa(opcodeParams[0].dwParam, buffiter, 10);
						while (*buffiter)
							*fmta++ = *buffiter++;
					}
					else
						while (isdigit(*iter))
							*fmta++ = *iter++;
				}
				//get size
				if (*iter == 'h' || *iter == 'l')
					*fmta++ = *iter++;

				switch (*iter)
				{
				case 's':
				{
					static const char  __attribute__((section(".nonestr"))) none[] = "(null)";
					const char *astr = readString(thread);
					const char *striter = astr ? astr : none;
					while (*striter)
					{
						if (written++ >= len)
							return -1;
						*str++ = *striter++;
					}
					iter++;
					break;
				}

				case 'c':
					if (written++ >= len)
						return -1;
					GetScriptParams(thread, 1);
					*str++ = (char)opcodeParams[0].nParam;
					iter++;
					break;

				default:
				{
					/* For non wc types, use system sprintf and append to wide char output */
					/* FIXME: for unrecognised types, should ignore % when printing */
					char *bufaiter = bufa;
					if (*iter == 'p' || *iter == 'P')
					{
						GetScriptParams(thread, 1);
						static const char  __attribute__((section(".ptrstr"))) ptrstr[] = "%08X";
						sprintf(bufaiter, ptrstr, opcodeParams[0].dwParam);
					}
					else
					{
						*fmta++ = *iter;
						*fmta = '\0';
						if (*iter == 'a' || *iter == 'A' ||
							*iter == 'e' || *iter == 'E' ||
							*iter == 'f' || *iter == 'F' ||
							*iter == 'g' || *iter == 'G')
						{
							GetScriptParams(thread, 1);
							sprintf(bufaiter, fmtbufa, opcodeParams[0].fParam);
						}
						else
						{
							GetScriptParams(thread, 1);
							sprintf(bufaiter, fmtbufa, opcodeParams[0].pParam);
						}
					}
					while (*bufaiter)
					{
						if (written++ >= len)
							return -1;
						*str++ = *bufaiter++;
					}
					iter++;
					break;
				}
				}
			}
		}
		if (written >= len)
			return -1;
		*str++ = 0;
		return (int)written;
	}


int opcode_0AD3(CRunningScript *thread)
{
	char fmt[128], *dst;
	if (*thread->GetBytePointer() >= 1 && *thread->GetBytePointer() <= 8){
		GetScriptParams(thread, 1);
		dst = (char*)opcodeParams[0].dwParam;
	} else {
		dst = &GetScriptParamPointer(thread, 1)->cParam;
	}
	readString(thread, fmt, sizeof(fmt));
	format(thread, dst, -1, fmt);
	SkipUnusedParameters(thread);
	return OR_CONTINUE;
}

bool   __attribute__((section("._ZN12CCutsceneMgr32IsCutsceneSkipButtonBeingPressedEv"))) CCutsceneMgr_IsCutsceneSkipButtonBeingPressed(){ return true; }
void* CTheScripts_ScriptSpace __attribute__((section("._ZN11CTheScripts11ScriptSpaceE")));
void  __attribute__((section("._ZN14CRunningScript18DoDeatharrestCheckEv"))) CRunningScript_DoDeatharrestCheck(CRunningScript *thread){ return; }
bool CTheScripts_FailCurrentMission __attribute__((section("._ZN11CTheScripts18FailCurrentMissionE")));
size_t CTimer_m_snTimeInMilliseconds __attribute__((section("._ZN6CTimer22m_snTimeInMillisecondsE")));
void __attribute__((section("._ZN11CTheScripts31ReinitialiseSwitchStatementDataEv"))) CTheScripts_ReinitialiseSwitchStatementData(){ return; }
int _StyledText_2[2] __attribute__((section(".style2")));
size_t CTheScripts_CommandsExecuted  __attribute__((section(".CTheScripts_CommandsExecuted")));
int __attribute__((section(".opcodeTable"))) (*opcodeHandlerTable[100])(CRunningScript* thread, int opcode);

void __attribute__((section("._ZN14CRunningScript7ProcessEv"))) CRunningScript_Process(CRunningScript *thread)
{
    void *v2; // eax
    bool v3; // zf
    uint16_t v4; // ax
    WORD *v5; // ecx
    unsigned int v6; // eax

    if ( thread->SceneSkipIP && CCutsceneMgr_IsCutsceneSkipButtonBeingPressed() )
    {
        _StyledText_2[0] = 0;
        v2 = thread->SceneSkipIP;
        if ( (int)v2 >= 0 )
            thread->CurrentIP = (BYTE*)&CTheScripts_ScriptSpace + (DWORD)v2;
        else
            thread->CurrentIP = (BYTE*)(thread->BaseIP - (DWORD)v2);
        thread->SceneSkipIP = 0;
        thread->WakeTime = 0;
    }
    if ( thread->bUseMissionCleanup )
        CRunningScript_DoDeatharrestCheck(thread);
    if ( thread->bIsMission && CTheScripts_FailCurrentMission == 1 )
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
    if ( CTimer_m_snTimeInMilliseconds >= thread->WakeTime )
    {
        do
        {
            ++CTheScripts_CommandsExecuted;
            v5 = (WORD*)thread->CurrentIP;
            v6 = (WORD)*v5;
            thread->CurrentIP = (BYTE*)(v5 + 1);
            thread->NotFlag = (v6 & 0x8000) != 0;
        }
        while ( !opcodeHandlerTable[(int16_t)(v6 & 0x7FFF) / 100](thread, v6 & 0x7FFF) );
    }
}

int __attribute__((section(".CLEOSwitcher"))) switch_CLEO_opcodes(CRunningScript* thread, uint16_t opcode){
	uint32_t* address;
	short size;
	int result = 0;

	switch (opcode){
	case 0xA8C:
		GetScriptParams(thread, 3);
		address = (uint32_t*)opcodeParams[0].dwParam;
		size = opcodeParams[1].wParam;

		switch(size){
		case 1:
			*address = opcodeParams[2].ucParam;
			break;
		case 2:
			*address = opcodeParams[2].wParam;
			break;
		case 4:
			*address = opcodeParams[2].dwParam;
			break;
		default:
			return -1;
			break;
		}

		result = 0;
		break;

	case 0xA8D:
		GetScriptParams(thread, 2);
		address = (uint32_t*)opcodeParams[0].dwParam;
		size = opcodeParams[1].wParam;

		switch(size){
		case 1:
			opcodeParams[0].ucParam = (uint8_t)(*address);
			break;
		case 2:
			opcodeParams[0].wParam = (uint16_t)(*address);
			break;
		case 4:
			opcodeParams[0].dwParam = *address;
			break;
		default:
			return -1;
			break;
		}

		SetScriptParams(thread, 1);

		result = 0;
		break;
	
	default:
		result = -1;
		break;
	}

	return result;
}

int main(int argc, char *argv[])
{
  return 0;
}
