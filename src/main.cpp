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
#include <ctype.h>


/************************************************************************/
/*							Address Wrappers							*/
/************************************************************************/

#include "stdwrappers.h"

typedef uint64_t QWORD;
typedef uint8_t BYTE;
typedef uint16_t WORD;
typedef uint32_t DWORD;
typedef uint64_t QWORD;

#include "CTheScripts.h"

int  __attribute__((section(".GetPedStruct"))) GetPedStruct(DWORD *a1, int a2) {return 0;}
DWORD* pedPool __attribute__((section(".pedPool")));

int  __attribute__((section(".GetVehStruct"))) GetVehStruct(DWORD *a1, int a2) {return 0;}
DWORD* vehPool __attribute__((section(".vehPool")));

int  __attribute__((section(".GetObjStruct"))) GetObjStruct(DWORD *a1, int a2) {return 0;}
DWORD* objPool __attribute__((section(".objPool")));

void   __attribute__((section(".PrintHelp"))) PrintHelp(char* text, int a, int b, int c){ return; }

bool   __attribute__((section("._ZN12CCutsceneMgr32IsCutsceneSkipButtonBeingPressedEv"))) CCutsceneMgr_IsCutsceneSkipButtonBeingPressed(){ return true; }
void* CTheScripts_ScriptSpace __attribute__((section("._ZN11CTheScripts11ScriptSpaceE")));
void  __attribute__((section("._ZN14CRunningScript18DoDeatharrestCheckEv"))) CRunningScript_DoDeatharrestCheck(CRunningScript *thread){ return; }
bool CTheScripts_FailCurrentMission __attribute__((section("._ZN11CTheScripts18FailCurrentMissionE")));
size_t CTimer_m_snTimeInMilliseconds __attribute__((section("._ZN6CTimer22m_snTimeInMillisecondsE")));
void __attribute__((section("._ZN11CTheScripts31ReinitialiseSwitchStatementDataEv"))) CTheScripts_ReinitialiseSwitchStatementData(){ return; }
int _StyledText_2[2] __attribute__((section(".style2")));
size_t CTheScripts_CommandsExecuted  __attribute__((section(".CTheScripts_CommandsExecuted")));
int __attribute__((section(".opcodeTable"))) (*opcodeHandlerTable[100])(CRunningScript* thread, int opcode);

/************************************************************************/
/*					CRunningScript::Process hook						*/
/************************************************************************/

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

/************************************************************************/
/*						CRunningScript wrappers							*/
/************************************************************************/

SCRIPT_VAR opcodeParams[35] __attribute__((section(".opcodeparams")));

void  __attribute__((section(".setparams"))) SetScriptParams(CRunningScript *thread, int count){ count ++; return; }
void  __attribute__((section(".getparams"))) GetScriptParams(CRunningScript *thread, int count){ return; }
void  __attribute__((section(".getstrparam")))  GetScriptStringParam(CRunningScript *thread, char *ptr, uint8_t len){ return; }
inline SCRIPT_VAR*  __attribute__((section(".getparamptr"))) GetScriptParamPointer(CRunningScript *thread, int count){ return (SCRIPT_VAR*)0xCAFE; }

/************************************************************************/
/*						CLEO New functions								*/
/************************************************************************/

inline void   SkipUnusedParameters(CRunningScript *thread)
{
	while (*thread->GetBytePointer()) GetScriptParams(thread, 1);	// skip parameters
	thread->ReadDataByte();
}

// a pointer automatically convertible to integral types
union memory_pointer
{
    size_t address;
    void *pointer;

    inline memory_pointer(void *p) : pointer(p) { }
    inline memory_pointer(size_t a) : address(a) { }
    inline operator void *() { return pointer; }
    inline operator size_t() { return address; }
    inline memory_pointer& operator=(void *p) { return *this = p; }
    inline memory_pointer& operator=(size_t p) { return *this = p; }

    // conversion to/from any-type pointer
    template<typename T>
    inline memory_pointer(T *p) : pointer(reinterpret_cast<void *>(p)) {}
    template<typename T>
    inline operator T *() { return reinterpret_cast<T *>(pointer); }
    template<typename T>
    inline memory_pointer& operator=(T *p) { return *this = reinterpret_cast<void *>(p); }
};

enum OpcodeResult : int
{
    OR_CONTINUE = 0,
    OR_INTERRUPT = 1
};

typedef OpcodeResult(* CustomOpcodeHandler)(CRunningScript*);

OpcodeResult opcode_0A8C(CRunningScript *thread);
OpcodeResult opcode_0A8D(CRunningScript *thread);
OpcodeResult opcode_0A8E(CRunningScript *thread);
OpcodeResult opcode_0A8F(CRunningScript *thread);
OpcodeResult opcode_0A90(CRunningScript *thread);
OpcodeResult opcode_0A91(CRunningScript *thread);
OpcodeResult opcode_0A96(CRunningScript *thread);
OpcodeResult opcode_0A97(CRunningScript *thread);
OpcodeResult opcode_0A98(CRunningScript *thread);
OpcodeResult opcode_0A9F(CRunningScript *thread);
OpcodeResult opcode_0AA5(CRunningScript *thread);
OpcodeResult opcode_0AA6(CRunningScript *thread);
OpcodeResult opcode_0AA7(CRunningScript *thread);
OpcodeResult opcode_0AA8(CRunningScript *thread);
OpcodeResult opcode_0ACA(CRunningScript *thread);
OpcodeResult opcode_0AD3(CRunningScript *thread);
OpcodeResult opcode_defa(CRunningScript *thread);

CustomOpcodeHandler   customOpcodeHandlers[100] =
{
	opcode_0A8C, opcode_0A8D, opcode_0A8E, opcode_0A8F, opcode_0A90,
	opcode_0A91, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_0A96, opcode_0A97, opcode_0A98, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_0A9F,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_0AA5, opcode_0AA6, opcode_0AA7, opcode_0AA8, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_0ACA, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_0AD3, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
};

typedef OpcodeResult(*_OpcodeHandler)(CRunningScript *thread, unsigned short opcode);

void(* ProcessScript)(CRunningScript*);


void(* SpawnCar)(DWORD);

inline  CRunningScript& operator>>(CRunningScript& thread, DWORD& uval)
{
	GetScriptParams(&thread, 1);
	uval = opcodeParams[0].dwParam;
	return thread;
}

inline  CRunningScript& operator<<(CRunningScript& thread, DWORD uval)
{
	opcodeParams[0].dwParam = uval;
	SetScriptParams(&thread, 1);
	return thread;
}

inline  CRunningScript& operator>>(CRunningScript& thread, int& nval)
{
	GetScriptParams(&thread, 1);
	nval = opcodeParams[0].nParam;
	return thread;
}

inline  CRunningScript& operator<<(CRunningScript& thread, int nval)
{
	opcodeParams[0].nParam = nval;
	SetScriptParams(&thread, 1);
	return thread;
}

inline  CRunningScript& operator>>(CRunningScript& thread, float& fval)
{
	GetScriptParams(&thread, 1);
	fval = opcodeParams[0].fParam;
	return thread;
}

inline  CRunningScript& operator<<(CRunningScript& thread, float fval)
{
	opcodeParams[0].fParam = fval;
	SetScriptParams(&thread, 1);
	return thread;
}

inline  CRunningScript& operator>>(CRunningScript& thread, char *& pval)
{
	GetScriptParams(&thread, 1);
	pval = (char*)(opcodeParams[0].pParam);
	return thread;
}

inline  CRunningScript& operator>>(CRunningScript& thread, void *& pval)
{
	GetScriptParams(&thread, 1);
	pval = (opcodeParams[0].pParam);
	return thread;
}



template<typename T>
inline  CRunningScript& operator>>(CRunningScript& thread, T *& pval)
{
	GetScriptParams(&thread, 1);
	pval = reinterpret_cast<T *>(opcodeParams[0].pParam);
	return thread;
}

template<typename T>
inline  CRunningScript& operator<<(CRunningScript& thread, T *pval)
{
	opcodeParams[0].pParam = (void *)(pval);
	SetScriptParams(&thread, 1);
	return thread;
}

inline  CRunningScript& operator>>(CRunningScript& thread, memory_pointer& pval)
{
	GetScriptParams(&thread, 1);
	pval = opcodeParams[0].pParam;
	return thread;
}

template<typename T>
inline  CRunningScript& operator<<(CRunningScript& thread, memory_pointer pval)
{
	opcodeParams[0].pParam = pval;
	SetScriptParams(&thread, 1);
	return thread;
}

static const char  __attribute__((section(".rodata"))) int_fmt[] = "%d";
static const char  __attribute__((section(".rodata")))  ptrstr[] = "%08X";
static const char  __attribute__((section(".rodata")))  none[] = "(null)";

char  *readString(CRunningScript *thread, char* buf = nullptr, uint8_t size = 0)
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
            static char result[128]    ;
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

int  format(CRunningScript *thread, char *str, size_t len, const char *format)
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
					sprintf(buffiter, int_fmt, opcodeParams[0].dwParam);
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
					sprintf(buffiter, int_fmt, opcodeParams[0].dwParam);
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
						sprintf(bufaiter, fmtbufa, __extendsfdf2(opcodeParams[0].fParam));
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

// opcode handler for custom opcodes
OpcodeResult  customOpcodeHandler(CRunningScript *thread, unsigned short opcode)
{
	return customOpcodeHandlers[opcode - 0x0A8C](thread);
}

/************************************************************************/
/*						Opcode definitions								*/
/************************************************************************/

OpcodeResult   opcode_defa(CRunningScript *thread)
{
	return OR_CONTINUE;
}

//0A8C=3,write_memory %1d% size %2d% value %3d%
OpcodeResult   opcode_0A8C(CRunningScript *thread)
{
	GetScriptParams(thread, 3);
	DWORD *Address = (DWORD*)opcodeParams[0].pParam;
	DWORD size = opcodeParams[1].dwParam;
	//WORD value = opcodeParams[2].dwParam;

	switch(size){
	default:
		*Address = opcodeParams[2].ucParam;
		break;
	case 2:
		*Address = opcodeParams[2].wParam;
		break;
	case 4:
		*Address = opcodeParams[2].dwParam;
		break;
	}
	return OR_CONTINUE;
}

//0A8D=3,%3d% = read_memory %1d% size %2d%
OpcodeResult   opcode_0A8D(CRunningScript *thread)
{
	GetScriptParams(thread, 2);
	DWORD *Address = (DWORD*)opcodeParams[0].dwParam;
	DWORD size = opcodeParams[1].wParam;

	switch(size){
	default:
		opcodeParams[0].ucParam = (uint8_t)(*Address);
		break;
	case 2:
		opcodeParams[0].wParam = (uint16_t)(*Address);
		break;
	case 4:
		opcodeParams[0].dwParam = *Address;
		break;
	}

	SetScriptParams(thread, 1);

	return OR_CONTINUE;
}

//0A8E=3,%3d% = %1d% + %2d% ; int
OpcodeResult   opcode_0A8E(CRunningScript *thread)
{
	GetScriptParams(thread, 2);
	opcodeParams[0].nParam += opcodeParams[1].nParam;
	SetScriptParams(thread, 1);	
	return OR_CONTINUE;
}

//0A8F=3,%3d% = %1d% - %2d% ; int
OpcodeResult   opcode_0A8F(CRunningScript *thread)
{
	GetScriptParams(thread, 2);
	opcodeParams[0].nParam -= opcodeParams[1].nParam;
	SetScriptParams(thread, 1);
	return OR_CONTINUE;
}

//0A90=3,%3d% = %1d% * %2d% ; int
OpcodeResult   opcode_0A90(CRunningScript *thread)
{
	GetScriptParams(thread, 2);
	opcodeParams[0].nParam *= opcodeParams[1].nParam;
	SetScriptParams(thread, 1);
	return OR_CONTINUE;
}

//0A90=3,%3d% = %1d% / %2d% ; int
OpcodeResult   opcode_0A91(CRunningScript *thread)
{
	GetScriptParams(thread, 2);
	opcodeParams[0].nParam /= opcodeParams[1].nParam;
	SetScriptParams(thread, 1);
	return OR_CONTINUE;
}

//0A96=2,%2d% = actor %1d% struct
OpcodeResult   opcode_0A96(CRunningScript *thread)
{
	DWORD handle;
	*thread >> handle;
	*thread << GetPedStruct(pedPool, handle);
	return OR_CONTINUE;
}

//0A97=2,%2d% = car %1d% struct
OpcodeResult   opcode_0A97(CRunningScript *thread)
{
	DWORD handle;
	*thread >> handle;
	*thread << GetVehStruct(vehPool, handle);
	return OR_CONTINUE;
}

//0A98=2,%2d% = object %1d% struct
OpcodeResult   opcode_0A98(CRunningScript *thread)
{
	DWORD handle;
	*thread >> handle;
	*thread << GetObjStruct(objPool, handle);
	return OR_CONTINUE;
}

//0A9F=1,%1d% = current_thread_pointer
OpcodeResult   opcode_0A9F(CRunningScript *thread)
{
	SetScriptParams(thread, 1);
	opcodeParams[0].pParam = (void*)thread;
	return OR_CONTINUE;
}

static char textParams[5][128]   ;
static unsigned char currTextParam   = 0;
static SCRIPT_VAR arguments[15] = { 0 };

//0AA5=-1,call_function %1d% num_params %2h% pop %3h%
OpcodeResult   opcode_0AA5(CRunningScript *thread)
{
	void(*func)(SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, 
				SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, 
				SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR);
	DWORD numParams;
	DWORD stackAlign;
	*thread >> func >> numParams >> stackAlign;
	if (numParams > (sizeof(arguments) / sizeof(SCRIPT_VAR))) numParams = sizeof(arguments) / sizeof(SCRIPT_VAR);
	stackAlign *= 4;
	SCRIPT_VAR	*arguments_end = arguments + numParams;

	// retrieve parameters
	int i = 0;
	for (SCRIPT_VAR *arg = arguments; arg != arguments_end; ++arg)
	{
			switch (*thread->GetBytePointer())
			{
			case DT_FLOAT:
				*thread >> arg->fParam;
				switch(i)
				{
					case 0:
						__asm__ ("lwc1 $f12, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 1:  
						__asm__ ("lwc1 $f13, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 2:  
						__asm__ ("lwc1 $f14, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 3:  
						__asm__ ("lwc1 $f15, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 4:  
						__asm__ ("lwc1 $f16, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 5:  
						__asm__ ("lwc1 $f17, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 6:  
						__asm__ ("lwc1 $f18, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 7: 
						__asm__ ("lwc1 $f19, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 8:  
						__asm__ ("lwc1 $f20, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 9:  
						__asm__ ("lwc1 $f21, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 10: 
						__asm__ ("lwc1 $f22, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 11: 
						__asm__ ("lwc1 $f23, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 12: 
						__asm__ ("lwc1 $f24, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 13: 
						__asm__ ("lwc1 $f25, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 14: 
						__asm__ ("lwc1 $f26, 0(%0) \n" : : "r" (&arg->fParam));
						break;
				}
				i++;
				break;
			case DT_DWORD:
			case DT_WORD:
			case DT_BYTE:
			case DT_VAR:
			case DT_LVAR:
			case DT_VAR_ARRAY:
			case DT_LVAR_ARRAY:
				*thread >> arg->dwParam;
				break;
			case DT_VAR_STRING:
			case DT_LVAR_STRING:
			case DT_VAR_TEXTLABEL:
			case DT_LVAR_TEXTLABEL:
				arg->pParam = GetScriptParamPointer(thread, 1);
				break;
			case DT_VARLEN_STRING:
			case DT_TEXTLABEL:
				(*arg).pcParam = readString(thread, textParams[currTextParam++], 128);
			}
	}

	// call function
	func(arguments[0], arguments[1],  arguments[2],  arguments[3], arguments[4], 
		 arguments[5], arguments[6], arguments[7], arguments[8], arguments[9], 
		 arguments[10], arguments[11], arguments[12], arguments[13], arguments[14]);

	SkipUnusedParameters(thread);

	return OR_CONTINUE;
}

//0AA6=-1,call_method %1d% struct %2d% num_params %3h% pop %4h%
OpcodeResult   opcode_0AA6(CRunningScript *thread)
{

	void(*func)(void*, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, 
			SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, 
			SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR);
	void *struc;
	DWORD numParams;
	DWORD stackAlign;
	*thread >> func >> struc >> numParams >> stackAlign;
	if (numParams > (sizeof(arguments) / sizeof(SCRIPT_VAR))) numParams = sizeof(arguments) / sizeof(SCRIPT_VAR);
	stackAlign *= 4;
	SCRIPT_VAR	*arguments_end = arguments + numParams;

	// retrieve parameters
	int i = 0;
	for (SCRIPT_VAR *arg = arguments; arg != arguments_end; ++arg)
	{
			switch (*thread->GetBytePointer())
			{
			case DT_FLOAT:
				*thread >> arg->fParam;
				switch(i)
				{
					case 0:
						__asm__ ("lwc1 $f12, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 1:  
						__asm__ ("lwc1 $f13, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 2:  
						__asm__ ("lwc1 $f14, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 3:  
						__asm__ ("lwc1 $f15, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 4:  
						__asm__ ("lwc1 $f16, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 5:  
						__asm__ ("lwc1 $f17, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 6:  
						__asm__ ("lwc1 $f18, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 7: 
						__asm__ ("lwc1 $f19, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 8:  
						__asm__ ("lwc1 $f20, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 9:  
						__asm__ ("lwc1 $f21, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 10: 
						__asm__ ("lwc1 $f22, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 11: 
						__asm__ ("lwc1 $f23, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 12: 
						__asm__ ("lwc1 $f24, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 13: 
						__asm__ ("lwc1 $f25, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 14: 
						__asm__ ("lwc1 $f26, 0(%0) \n" : : "r" (&arg->fParam));
						break;
				}
				i++;
				break;
			case DT_DWORD:
			case DT_WORD:
			case DT_BYTE:
			case DT_VAR:
			case DT_LVAR:
			case DT_VAR_ARRAY:
			case DT_LVAR_ARRAY:
				*thread >> arg->dwParam;
				break;
			case DT_VAR_STRING:
			case DT_LVAR_STRING:
			case DT_VAR_TEXTLABEL:
			case DT_LVAR_TEXTLABEL:
				arg->pParam = GetScriptParamPointer(thread, 1);
				break;
			case DT_VARLEN_STRING:
			case DT_TEXTLABEL:
				(*arg).pcParam = readString(thread, textParams[currTextParam++], 128);
			}
	}

	// call method
	func(struc, arguments[0], arguments[1],  arguments[2],  arguments[3], arguments[4], 
	 arguments[5], arguments[6], arguments[7], arguments[8], arguments[9], 
	 arguments[10], arguments[11], arguments[12], arguments[13], arguments[14]);

	SkipUnusedParameters(thread);

	return OR_CONTINUE;
}

//0AA7=-1,call_function_return %1d% num_params %2h% pop %3h%
OpcodeResult opcode_0AA7(CRunningScript *thread)
{
	DWORD (*func)(SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, 
			SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, 
			SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR);
	DWORD numParams;
	DWORD stackAlign;
	*thread >> func >> numParams >> stackAlign;
	if (numParams > (sizeof(arguments) / sizeof(SCRIPT_VAR))) numParams = sizeof(arguments) / sizeof(SCRIPT_VAR);
	stackAlign *= 4;
	SCRIPT_VAR	*arguments_end = arguments + numParams;

	// retrieve parameters
	int i = 0;
	for (SCRIPT_VAR *arg = arguments; arg != arguments_end; ++arg)
	{
			switch (*thread->GetBytePointer())
			{
			case DT_FLOAT:
				*thread >> arg->fParam;
				switch(i)
				{
					case 0:
						__asm__ ("lwc1 $f12, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 1:  
						__asm__ ("lwc1 $f13, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 2:  
						__asm__ ("lwc1 $f14, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 3:  
						__asm__ ("lwc1 $f15, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 4:  
						__asm__ ("lwc1 $f16, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 5:  
						__asm__ ("lwc1 $f17, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 6:  
						__asm__ ("lwc1 $f18, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 7: 
						__asm__ ("lwc1 $f19, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 8:  
						__asm__ ("lwc1 $f20, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 9:  
						__asm__ ("lwc1 $f21, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 10: 
						__asm__ ("lwc1 $f22, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 11: 
						__asm__ ("lwc1 $f23, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 12: 
						__asm__ ("lwc1 $f24, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 13: 
						__asm__ ("lwc1 $f25, 0(%0) \n" : : "r" (&arg->fParam));
						break;
					case 14: 
						__asm__ ("lwc1 $f26, 0(%0) \n" : : "r" (&arg->fParam));
						break;
				}
				i++;
				break;
			case DT_DWORD:
			case DT_WORD:
			case DT_BYTE:
			case DT_VAR:
			case DT_LVAR:
			case DT_VAR_ARRAY:
			case DT_LVAR_ARRAY:
				*thread >> arg->dwParam;
				break;
			case DT_VAR_STRING:
			case DT_LVAR_STRING:
			case DT_VAR_TEXTLABEL:
			case DT_LVAR_TEXTLABEL:
				arg->pParam = GetScriptParamPointer(thread, 1);
				break;
			case DT_VARLEN_STRING:
			case DT_TEXTLABEL:
				(*arg).pcParam = readString(thread, textParams[currTextParam++], 128);
			}
	}

	// call function
	opcodeParams[0].dwParam = func(arguments[0], arguments[1],  arguments[2],  arguments[3], arguments[4], 
		 			arguments[5], arguments[6], arguments[7], arguments[8], arguments[9], 
		 			arguments[10], arguments[11], arguments[12], arguments[13], arguments[14]);

	SetScriptParams(thread, 1);

	SkipUnusedParameters(thread);
	return OR_CONTINUE;
}

//0AA8=-1,call_method_return %1d% struct %2d% num_params %3h% pop %4h%
OpcodeResult   opcode_0AA8(CRunningScript *thread)
{
	DWORD (*func)(void*, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, 
			SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, 
			SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR, SCRIPT_VAR);
	void *struc;
	DWORD numParams;
	DWORD stackAlign;
	*thread >> func >> struc >> numParams >> stackAlign;
	if (numParams > (sizeof(arguments) / sizeof(SCRIPT_VAR))) numParams = sizeof(arguments) / sizeof(SCRIPT_VAR);
	stackAlign *= 4;
	SCRIPT_VAR	*arguments_end = arguments + numParams;

	// retrieve parameters
	int i = 0;
	for (SCRIPT_VAR *arg = arguments; arg != arguments_end; ++arg)
	{
		BYTE dType = *thread->GetBytePointer();
		if(dType == DT_FLOAT){
			GetScriptParams(thread, 1);
			arg->fParam = opcodeParams[i].fParam;
			if(i == 0)  __asm__ ("swc1 $f12, 0(%0) \n" : : "r" (&arg->fParam));
			else if(i == 1)  __asm__ ("lwc1 $f13, 0(%0) \n" : : "r" (&arg->fParam));
			else if(i == 2)  __asm__ ("lwc1 $f14, 0(%0) \n" : : "r" (&arg->fParam));
			else if(i == 3)  __asm__ ("lwc1 $f15, 0(%0) \n" : : "r" (&arg->fParam));
			else if(i == 4)  __asm__ ("lwc1 $f16, 0(%0) \n" : : "r" (&arg->fParam));
			else if(i == 5)  __asm__ ("lwc1 $f17, 0(%0) \n" : : "r" (&arg->fParam));
			else if(i == 6)  __asm__ ("lwc1 $f18, 0(%0) \n" : : "r" (&arg->fParam));
			else if(i == 7)  __asm__ ("lwc1 $f19, 0(%0) \n" : : "r" (&arg->fParam));
			else if(i == 8)  __asm__ ("lwc1 $f20, 0(%0) \n" : : "r" (&arg->fParam));
			else if(i == 9)  __asm__ ("lwc1 $f21, 0(%0) \n" : : "r" (&arg->fParam));
			else if(i == 10) __asm__ ("lwc1 $f22, 0(%0) \n" : : "r" (&arg->fParam));
			else if(i == 11) __asm__ ("lwc1 $f23, 0(%0) \n" : : "r" (&arg->fParam));
			else if(i == 12) __asm__ ("lwc1 $f24, 0(%0) \n" : : "r" (&arg->fParam));
			else if(i == 13) __asm__ ("lwc1 $f25, 0(%0) \n" : : "r" (&arg->fParam));
			else if(i == 14) __asm__ ("lwc1 $f26, 0(%0) \n" : : "r" (&arg->fParam));
			i++;
		} else if((dType == DT_DWORD) || (dType == DT_WORD) || (dType == DT_BYTE) || 
		          (dType == DT_VAR) || (dType == DT_LVAR) || (dType == DT_VAR_ARRAY) || (dType == DT_LVAR_ARRAY)){
			*thread >> arg->dwParam;
		} else if((dType == DT_VAR_STRING) || (dType == DT_LVAR_STRING) || (dType == DT_VAR_TEXTLABEL) || (dType == DT_LVAR_TEXTLABEL)){
			arg->pParam = GetScriptParamPointer(thread, 1);
		} else if((dType == DT_VARLEN_STRING) || (dType == DT_TEXTLABEL)){
			(*arg).pcParam = readString(thread, textParams[currTextParam++], 128);
		}
	}

	*thread << func(struc, arguments[0], arguments[1],  arguments[2],  arguments[3], arguments[4], 
		 			arguments[5], arguments[6], arguments[7], arguments[8], arguments[9], 
		 			arguments[10], arguments[11], arguments[12], arguments[13], arguments[14]);

	SkipUnusedParameters(thread);
	return OR_CONTINUE;
}

//0ACA=1,show_text_box %1s%
OpcodeResult   opcode_0ACA(CRunningScript *thread)
{	
	PrintHelp(readString(thread), 0, 0, 0);
	return OR_CONTINUE;
}

//0AD3=-1,%1d% = string_format %2s%
OpcodeResult   opcode_0AD3(CRunningScript *thread)
{
	char fmt[128], *dst;

	if (*thread->GetBytePointer() >= 1 && *thread->GetBytePointer() <= 8) *thread >> dst;
	else dst = &GetScriptParamPointer(thread, 1)->cParam;

	readString(thread, fmt, sizeof(fmt));
	format(thread, dst, -1, fmt);
	SkipUnusedParameters(thread);
	return OR_CONTINUE;
}