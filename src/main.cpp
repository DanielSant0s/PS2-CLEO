/*
# _____     ___ ____     ___ ____
#  ____|   |    ____|   |        | |____|
# |     ___|   |____ ___|    ____| |    \    PS2DEV Open Source Project.
#-----------------------------------------------------------------------
# Copyright 2001-2004, ps2dev - http://www.ps2dev.org
# Licenced under Academic Free License version 2.0
# Review ps2sdk README & LICENSE files for further details.
*/

/************************************************************************/
/*							Address Wrappers							*/
/************************************************************************/

#include "wrappers.h"

char message_buf[0x80]  __attribute__((section(".data"))) ;

/************************************************************************/
/*						CLEO New functions								*/
/************************************************************************/

inline void SkipUnusedParameters(CRunningScript *thread)
{
	while (*thread->GetBytePointer()) GetScriptParams(thread, 1);	// skip parameters
	thread->ReadDataByte();
}

inline void ThreadJump(CRunningScript *thread, int off)
{
	thread->SetIp(off < 0 ? thread->GetBasePointer() - off : (BYTE*)CTheScripts_ScriptSpace + off);
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

OpcodeResult opcode_defa(CRunningScript *thread);

OpcodeResult opcode_0A8C(CRunningScript *thread);
OpcodeResult opcode_0A8D(CRunningScript *thread);
OpcodeResult opcode_0A8E(CRunningScript *thread);
OpcodeResult opcode_0A8F(CRunningScript *thread);
OpcodeResult opcode_0A90(CRunningScript *thread);
OpcodeResult opcode_0A91(CRunningScript *thread);
OpcodeResult opcode_0A96(CRunningScript *thread);
OpcodeResult opcode_0A97(CRunningScript *thread);
OpcodeResult opcode_0A98(CRunningScript *thread);
OpcodeResult opcode_0A9A(CRunningScript *thread);
OpcodeResult opcode_0A9B(CRunningScript *thread);
OpcodeResult opcode_0A9C(CRunningScript *thread);
OpcodeResult opcode_0A9D(CRunningScript *thread);
OpcodeResult opcode_0A9F(CRunningScript *thread);
OpcodeResult opcode_0AA0(CRunningScript *thread);
OpcodeResult opcode_0AA1(CRunningScript *thread);
OpcodeResult opcode_0AA5(CRunningScript *thread);
OpcodeResult opcode_0AA6(CRunningScript *thread);
OpcodeResult opcode_0AA7(CRunningScript *thread);
OpcodeResult opcode_0AA8(CRunningScript *thread);
OpcodeResult opcode_0AC6(CRunningScript *thread);
OpcodeResult opcode_0AC7(CRunningScript *thread);
OpcodeResult opcode_0AC8(CRunningScript *thread);
OpcodeResult opcode_0AC9(CRunningScript *thread);
OpcodeResult opcode_0ACA(CRunningScript *thread);
OpcodeResult opcode_0ACB(CRunningScript *thread);
OpcodeResult opcode_0ACC(CRunningScript *thread);
OpcodeResult opcode_0ACD(CRunningScript *thread);
OpcodeResult opcode_0ACE(CRunningScript *thread);
OpcodeResult opcode_0ACF(CRunningScript *thread);
OpcodeResult opcode_0AD0(CRunningScript *thread);
OpcodeResult opcode_0AD1(CRunningScript *thread);
OpcodeResult opcode_0AD3(CRunningScript *thread);
OpcodeResult opcode_0AD5(CRunningScript *thread);
OpcodeResult opcode_0ADE(CRunningScript* thread);
OpcodeResult opcode_0AEA(CRunningScript *thread);
OpcodeResult opcode_0AEB(CRunningScript *thread);
OpcodeResult opcode_0AEC(CRunningScript *thread);

CustomOpcodeHandler customOpcodeHandlers[100] =
{
	opcode_0A8C, opcode_0A8D, opcode_0A8E, opcode_0A8F, opcode_0A90,
	opcode_0A91, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_0A96, opcode_0A97, opcode_0A98, opcode_defa, opcode_0A9A,
	opcode_0A9B, opcode_0A9C, opcode_0A9D, opcode_defa, opcode_0A9F,
	opcode_0AA0, opcode_0AA1, opcode_defa, opcode_defa, opcode_defa,
	opcode_0AA5, opcode_0AA6, opcode_0AA7, opcode_0AA8, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_0AC6, opcode_0AC7,
	opcode_0AC8, opcode_0AC9, opcode_0ACA, opcode_0ACB, opcode_0ACC,
	opcode_0ACD, opcode_0ACE, opcode_0ACF, opcode_0AD0, opcode_0AD1,
	opcode_defa, opcode_0AD3, opcode_defa, opcode_0AD5, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_0ADE, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_defa,
	opcode_defa, opcode_defa, opcode_defa, opcode_defa, opcode_0AEA,
	opcode_0AEB, opcode_0AEC, opcode_defa, opcode_defa, opcode_defa,
};

typedef OpcodeResult(*_OpcodeHandler)(CRunningScript *thread, unsigned short opcode);

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
static const char  __attribute__((section(".rodata")))  fltstr[] = "%f";
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
            static char result[128] __attribute__((section(".data"))) ;
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
						sprintf(bufaiter, fltstr, __extendsfdf2(opcodeParams[0].fParam));
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
OpcodeResult customOpcodeHandler(CRunningScript *thread, unsigned short opcode)
{
	return customOpcodeHandlers[opcode - 0x0A8C](thread);
}

/************************************************************************/
/*						Opcode definitions								*/
/************************************************************************/

OpcodeResult opcode_defa(CRunningScript *thread)
{
	return (OpcodeResult)-1;
}

//0A8C=3,write_memory %1d% size %2d% value %3d%
OpcodeResult opcode_0A8C(CRunningScript *thread)
{
	GetScriptParams(thread, 4);
	DWORD *Address = (DWORD*)opcodeParams[0].pParam;
	DWORD size = opcodeParams[1].dwParam;
	uint32_t align_diff;
	DWORD aligned_addr;
	DWORD temp[2];
	BYTE bytes[8];

	switch(size){
	default:
		align_diff = (DWORD)Address % 4;

		if(align_diff > 0){
			aligned_addr = (DWORD)Address;
			aligned_addr = ((DWORD)aligned_addr - align_diff);
			temp[0] = *(DWORD*)(aligned_addr);

			bytes[0] = temp[0] & 0xFF; bytes[1] = (temp[0] >> 8) & 0xFF; bytes[2] = (temp[0] >> 16) & 0xFF; bytes[3] = (temp[0] >> 24) & 0xFF;

			bytes[align_diff] = opcodeParams[2].ucParam;

			*(DWORD*)aligned_addr =  bytes[0] | (bytes[1] << 8) | (bytes[2] << 16) | (bytes[3] << 24);
		} else {
			*Address = opcodeParams[2].ucParam;
		}

		break;

	case 2:
		align_diff = (DWORD)Address % 4;

		if(align_diff > 0){
			aligned_addr = (DWORD)Address;
			aligned_addr = ((DWORD)aligned_addr - align_diff);
			temp[0] = *(DWORD*)(aligned_addr);
			temp[1] = *(DWORD*)(aligned_addr+4);

			bytes[0] = temp[0] & 0xFF; bytes[1] = (temp[0] >> 8) & 0xFF; bytes[2] = (temp[0] >> 16) & 0xFF; bytes[3] = (temp[0] >> 24) & 0xFF;

			if(align_diff > 2) bytes[4] = temp[1] & 0xFF; bytes[5] = (temp[1] >> 8) & 0xFF; bytes[6] = (temp[2] >> 16) & 0xFF; bytes[7] = (temp[1] >> 24) & 0xFF;

			bytes[align_diff] = opcodeParams[2].ucParam & 0xFF; bytes[align_diff+1] = (opcodeParams[2].ucParam >> 8) & 0xFF;

			*(DWORD*)aligned_addr =  bytes[0] | (bytes[1] << 8) | (bytes[2] << 16) | (bytes[3] << 24);
			if(align_diff > 2) *(DWORD*)(aligned_addr+4) =  bytes[4] | (bytes[5] << 8) | (bytes[6] << 16) | (bytes[7] << 24);

		} else {
			*Address = opcodeParams[2].wParam;
		}
		
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
	DWORD *Address;
	DWORD size;
	uint32_t align_diff;
	DWORD aligned_addr;

	*thread >> Address >> size;

	GetScriptParams(thread, 1);

	switch(size){
	default:
		align_diff = (DWORD)Address % 4;
		aligned_addr = (DWORD)Address;

		if(align_diff > 0){
			aligned_addr = ((DWORD)aligned_addr - align_diff);
			opcodeParams[0].ucParam = (BYTE)(*(uint32_t*)(aligned_addr) >> (8*align_diff));
		} else {
			opcodeParams[0].ucParam = *(BYTE*)Address;
		}
		break;
	case 2:
		align_diff = (DWORD)Address % 4;
		aligned_addr = (DWORD)Address;

		if(align_diff > 0){
			aligned_addr = ((DWORD)aligned_addr - align_diff);
			opcodeParams[0].wParam = (WORD)(*(uint32_t*)(aligned_addr) >> (8*align_diff));
			opcodeParams[0].wParam += (WORD)(*(uint32_t*)(aligned_addr+4) << (8*(4-align_diff)));
		} else {
			opcodeParams[0].wParam = *(WORD*)Address;
		}

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

//0A91=3,%3d% = %1d% / %2d% ; int
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
	*thread << GetPedStruct((DWORD*)*pedPool, handle);
	return OR_CONTINUE;
}

//0A97=2,%2d% = car %1d% struct
OpcodeResult   opcode_0A97(CRunningScript *thread)
{
	DWORD handle;
	*thread >> handle;
	*thread << GetVehStruct((DWORD*)*vehPool, handle);
	return OR_CONTINUE;
}

//0A98=2,%2d% = object %1d% struct
OpcodeResult   opcode_0A98(CRunningScript *thread)
{
	DWORD handle;
	*thread >> handle;
	*thread << GetObjStruct((DWORD*)*objPool, handle);
	return OR_CONTINUE;
}

//0A9A=3,%3d% = openfile %1d% mode %2d% // IF and SET
OpcodeResult opcode_0A9A(CRunningScript *thread)
{
	const char *fname = readString(thread);
	char mode[0x10];

	// string param
	GetScriptStringParam(thread, mode, sizeof(mode));

	if (auto hfile = rw_open(fname, mode))
	{
		//GetInstance().OpcodeSystem.m_hFiles.insert(hfile);
		*thread << hfile;
		SetScriptCondResult(thread, true);
	}
	else
	{
		*thread << (DWORD)NULL;
		SetScriptCondResult(thread, false);
	}
	return OR_CONTINUE;
}

//0A9B=1,closefile %1d%
OpcodeResult opcode_0A9B(CRunningScript *thread)
{
	DWORD hFile;
	*thread >> hFile;
	rw_close((FILE*)hFile);
	//GetInstance().OpcodeSystem.m_hFiles.erase(hFile);
	return OR_CONTINUE;
}

int CFileMgr_GetFileLength(FILE* a1)
{
  RwFileFunction *v1; // eax
  int v2; // edi
  RwFileFunction *v3; // eax
  RwFileFunction *v4; // eax
  int v5; // ebx
  RwFileFunction *v6; // eax

  v1 = RwOsGetFileInterface();
  v2 = v1->rwftell(a1);
  v3 = RwOsGetFileInterface();
  v3->rwfseek(a1, 0, 2);
  v4 = RwOsGetFileInterface();
  v5 = v4->rwftell(a1);
  v6 = RwOsGetFileInterface();
  v6->rwfseek(a1, v2, 0);
  return v5;
}

//0A9C=2,%2d% = file %1d% size
OpcodeResult opcode_0A9C(CRunningScript *thread)
{
	
	DWORD hFile;
	*thread >> hFile;
	*thread << CFileMgr_GetFileLength((FILE*)hFile);
	return OR_CONTINUE;
}

//0A9D=3,readfile %1d% size %2d% to %3d%
OpcodeResult opcode_0A9D(CRunningScript *thread)
{
	DWORD hFile;
	DWORD size;
	void *buf;
	*thread >> hFile >> size;
	buf = GetScriptParamPointer(thread, 1);
	rw_read((FILE*)hFile, buf, size);
	return OR_CONTINUE;
}


//0A9F=1,%1d% = current_thread_pointer
OpcodeResult opcode_0A9F(CRunningScript *thread)
{
	opcodeParams[0].dwParam = (int)thread;
	SetScriptParams(thread, 1);
	return OR_CONTINUE;
}

//0AA0=1,gosub_if_false %1p%
OpcodeResult opcode_0AA0(CRunningScript *thread)
{
	int off;
	*thread >> off;
	if (thread->GetConditionResult()) return OR_CONTINUE;
	thread->PushStack(thread->GetBytePointer());
	ThreadJump(thread, off);
	return OR_CONTINUE;
}

//0AA1=0,return_if_false
OpcodeResult opcode_0AA1(CRunningScript *thread)
{
	if (thread->GetConditionResult()) return OR_CONTINUE;
	thread->SetIp(thread->PopStack());
	return OR_CONTINUE;
}

static char  __attribute__((section(".data"))) textParams[2][128];
static unsigned char  __attribute__((section(".data"))) currTextParam  = 0;
static SCRIPT_VAR  __attribute__((section(".data"))) arguments[15] = { 0 };

//0AA5=-1,call_function %1d% num_params %2h% pop %3h%
OpcodeResult opcode_0AA5(CRunningScript *thread)
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
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f12, $f0 \n" : : "r" (arg->fParam));
					break;
				case 1:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f13, $f0 \n" : : "r" (arg->fParam));
					break;
				case 2:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f14, $f0 \n" : : "r" (arg->fParam));
					break;
				case 3:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f15, $f0 \n" : : "r" (arg->fParam));
					break;
				case 4:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f16, $f0 \n" : : "r" (arg->fParam));
					break;
				case 5:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f17, $f0 \n" : : "r" (arg->fParam));
					break;
				case 6:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f18, $f0 \n" : : "r" (arg->fParam));
					break;
				case 7: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f19, $f0 \n" : : "r" (arg->fParam));
					break;
				case 8:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f20, $f0 \n" : : "r" (arg->fParam));
					break;
				case 9:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f21, $f0 \n" : : "r" (arg->fParam));
					break;
				case 10: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f22, $f0 \n" : : "r" (arg->fParam));
					break;
				case 11: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f23, $f0 \n" : : "r" (arg->fParam));
					break;
				case 12: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f24, $f0 \n" : : "r" (arg->fParam));
					break;
				case 13: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f25, $f0 \n" : : "r" (arg->fParam));
					break;
				case 14: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f26, $f0 \n" : : "r" (arg->fParam));
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
OpcodeResult opcode_0AA6(CRunningScript *thread)
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
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f12, $f0 \n" : : "r" (arg->fParam));
					break;
				case 1:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f13, $f0 \n" : : "r" (arg->fParam));
					break;
				case 2:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f14, $f0 \n" : : "r" (arg->fParam));
					break;
				case 3:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f15, $f0 \n" : : "r" (arg->fParam));
					break;
				case 4:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f16, $f0 \n" : : "r" (arg->fParam));
					break;
				case 5:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f17, $f0 \n" : : "r" (arg->fParam));
					break;
				case 6:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f18, $f0 \n" : : "r" (arg->fParam));
					break;
				case 7: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f19, $f0 \n" : : "r" (arg->fParam));
					break;
				case 8:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f20, $f0 \n" : : "r" (arg->fParam));
					break;
				case 9:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f21, $f0 \n" : : "r" (arg->fParam));
					break;
				case 10: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f22, $f0 \n" : : "r" (arg->fParam));
					break;
				case 11: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f23, $f0 \n" : : "r" (arg->fParam));
					break;
				case 12: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f24, $f0 \n" : : "r" (arg->fParam));
					break;
				case 13: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f25, $f0 \n" : : "r" (arg->fParam));
					break;
				case 14: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f26, $f0 \n" : : "r" (arg->fParam));
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
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f12, $f0 \n" : : "r" (arg->fParam));
					break;
				case 1:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f13, $f0 \n" : : "r" (arg->fParam));
					break;
				case 2:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f14, $f0 \n" : : "r" (arg->fParam));
					break;
				case 3:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f15, $f0 \n" : : "r" (arg->fParam));
					break;
				case 4:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f16, $f0 \n" : : "r" (arg->fParam));
					break;
				case 5:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f17, $f0 \n" : : "r" (arg->fParam));
					break;
				case 6:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f18, $f0 \n" : : "r" (arg->fParam));
					break;
				case 7: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f19, $f0 \n" : : "r" (arg->fParam));
					break;
				case 8:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f20, $f0 \n" : : "r" (arg->fParam));
					break;
				case 9:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f21, $f0 \n" : : "r" (arg->fParam));
					break;
				case 10: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f22, $f0 \n" : : "r" (arg->fParam));
					break;
				case 11: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f23, $f0 \n" : : "r" (arg->fParam));
					break;
				case 12: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f24, $f0 \n" : : "r" (arg->fParam));
					break;
				case 13: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f25, $f0 \n" : : "r" (arg->fParam));
					break;
				case 14: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f26, $f0 \n" : : "r" (arg->fParam));
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
	DWORD result;

	result =  func(arguments[0], arguments[1],  arguments[2],  arguments[3], arguments[4], 
		 			arguments[5], arguments[6], arguments[7], arguments[8], arguments[9], 
		 			arguments[10], arguments[11], arguments[12], arguments[13], arguments[14]);

	*thread << result;

	SkipUnusedParameters(thread);

	return OR_CONTINUE;
}

//0AA8=-1,call_method_return %1d% struct %2d% num_params %3h% pop %4h%
OpcodeResult opcode_0AA8(CRunningScript *thread)
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
		switch (*thread->GetBytePointer())
		{
		case DT_FLOAT:
			*thread >> arg->fParam;
			switch(i)
			{
				case 0:
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f12, $f0 \n" : : "r" (arg->fParam));
					break;
				case 1:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f13, $f0 \n" : : "r" (arg->fParam));
					break;
				case 2:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f14, $f0 \n" : : "r" (arg->fParam));
					break;
				case 3:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f15, $f0 \n" : : "r" (arg->fParam));
					break;
				case 4:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f16, $f0 \n" : : "r" (arg->fParam));
					break;
				case 5:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f17, $f0 \n" : : "r" (arg->fParam));
					break;
				case 6:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f18, $f0 \n" : : "r" (arg->fParam));
					break;
				case 7: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f19, $f0 \n" : : "r" (arg->fParam));
					break;
				case 8:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f20, $f0 \n" : : "r" (arg->fParam));
					break;
				case 9:  
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f21, $f0 \n" : : "r" (arg->fParam));
					break;
				case 10: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f22, $f0 \n" : : "r" (arg->fParam));
					break;
				case 11: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f23, $f0 \n" : : "r" (arg->fParam));
					break;
				case 12: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f24, $f0 \n" : : "r" (arg->fParam));
					break;
				case 13: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f25, $f0 \n" : : "r" (arg->fParam));
					break;
				case 14: 
					__asm__ ("mtc1    %0, $f0   \n"
							 "nop				\n"	
							 "cvt.s.w $f0, $f0	\n"
							 "mov.s   $f26, $f0 \n" : : "r" (arg->fParam));
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

	DWORD result;

	result =  func(struc, arguments[0], arguments[1],  arguments[2],  arguments[3], arguments[4], 
		 			arguments[5], arguments[6], arguments[7], arguments[8], arguments[9], 
		 			arguments[10], arguments[11], arguments[12], arguments[13], arguments[14]);

	*thread << result;
	return OR_CONTINUE;
}

//0AC6=2,%2d% = label %1p% offset
OpcodeResult opcode_0AC6(CRunningScript *thread)
{
	int label;
	*thread >> label;
	*thread << (label < 0 ? thread->GetBasePointer() - label : (BYTE*)CTheScripts_ScriptSpace + label);
	return OR_CONTINUE;
}

//0AC7=2,%2d% = var %1d% offset
OpcodeResult opcode_0AC7(CRunningScript *thread)
{
	*thread << GetScriptParamPointer(thread, 1);
	return OR_CONTINUE;
}

//0AC8=2,%2d% = allocate_memory_size %1d%
OpcodeResult opcode_0AC8(CRunningScript *thread)
{
	DWORD size;
	*thread >> size;
	void *mem = malloc(size);
	//if (mem) GetInstance().OpcodeSystem.m_pAllocations.insert(mem);
	*thread << mem;
	SetScriptCondResult(thread, mem != nullptr);
	return OR_CONTINUE;
}

//0AC9=1,free_allocated_memory %1d%
OpcodeResult opcode_0AC9(CRunningScript *thread)
{
	void *mem;
	*thread >> mem;
	//auto & allocs = GetInstance().OpcodeSystem.m_pAllocations;
	//if (allocs.find(mem) != allocs.end())
	//{
		free(mem);
	//	allocs.erase(mem);
	//}
	return OR_CONTINUE;
}

//0ACA=1,show_text_box %1s%
OpcodeResult opcode_0ACA(CRunningScript *thread)
{	
	PrintHelp(readString(thread), 0, 0, 0);
	return OR_CONTINUE;
}

//0ACB=3,show_styled_text %1d% time %2d% style %3d%
OpcodeResult opcode_0ACB(CRunningScript *thread)
{
	const char *text = readString(thread);
	DWORD time, style;
	*thread >> time >> style;
	strcpy(message_buf, text);
	PrintBig(message_buf, time, style-1);
	return OR_CONTINUE;
}

//0ACC=2,show_text_lowpriority %1d% time %2d%
OpcodeResult opcode_0ACC(CRunningScript *thread)
{
	const char *text = readString(thread);
	DWORD time;
	*thread >> time;
	strcpy(message_buf, text);
	Print(message_buf, time, false, false);
	return OR_CONTINUE;
}

//0ACD=2,show_text_highpriority %1d% time %2d%
OpcodeResult opcode_0ACD(CRunningScript *thread)
{
	const char *text = readString(thread);
	DWORD time;
	*thread >> time;
	strcpy(message_buf, text);
	PrintNow(message_buf, time, false, false);
	return OR_CONTINUE;
}

//0ACE=-1,show_formatted_text_box %1d%
OpcodeResult opcode_0ACE(CRunningScript *thread)
{
	char fmt[128];
	char text[128];
	readString(thread, fmt, sizeof(fmt));
	format(thread, text, sizeof(text), fmt);
	PrintHelp(text, 0, 0, 0);
	SkipUnusedParameters(thread);
	return OR_CONTINUE;
}


//0ACF=-1,show_formatted_styled_text %1d% time %2d% style %3d%
OpcodeResult opcode_0ACF(CRunningScript *thread)
{
	char fmt[128]; char text[128];
	DWORD time, style;
	readString(thread, fmt, sizeof(fmt));
	*thread >> time >> style;
	format(thread, text, sizeof(text), fmt);
	strcpy(message_buf, text);
	PrintBig(message_buf, time, style-1);
	SkipUnusedParameters(thread);
	return OR_CONTINUE;
}

//0AD0=-1,show_formatted_text_lowpriority %1d% time %2d%
OpcodeResult opcode_0AD0(CRunningScript *thread)
{
	char fmt[128]; char text[128];
	DWORD time;
	readString(thread, fmt, sizeof(fmt));
	*thread >> time;
	format(thread, text, sizeof(text), fmt);
	strcpy(message_buf, text);
	Print(message_buf, time, false, false);
	SkipUnusedParameters(thread);
	return OR_CONTINUE;
}

//0AD1=-1,show_formatted_text_highpriority %1d% time %2d%
OpcodeResult opcode_0AD1(CRunningScript *thread)
{
	char fmt[128]; char text[128];
	DWORD time;
	readString(thread, fmt, sizeof(fmt));
	*thread >> time;
	format(thread, text, sizeof(text), fmt);
	strcpy(message_buf, text);
	PrintNow(message_buf, time, false, false);
	SkipUnusedParameters(thread);
	return OR_CONTINUE;
}

//0AD3=-1,%1d% = string_format %2s%
OpcodeResult opcode_0AD3(CRunningScript *thread)
{
	char fmt[128], *dst;

	if (*thread->GetBytePointer() >= 1 && *thread->GetBytePointer() <= 8) *thread >> dst;
	else dst = &GetScriptParamPointer(thread, 1)->cParam;

	readString(thread, fmt, sizeof(fmt));
	format(thread, dst, -1, fmt);
	SkipUnusedParameters(thread);
	return OR_CONTINUE;
}

//0AD5=3,file %1d% seek %2d% from_origin %3d% //IF and SET
OpcodeResult opcode_0AD5(CRunningScript *thread)
{
	DWORD hFile;
	int seek, origin;
	*thread >> hFile >> seek >> origin;
	SetScriptCondResult(thread, rw_seek((FILE*)hFile, seek, origin) == 0);
	return OR_CONTINUE;
}

//0ADE=2,%2d% = text_by_GXT_entry %1d%
OpcodeResult opcode_0ADE(CRunningScript *thread)
{
	const char *gxt = readString(thread);
	if (*thread->GetBytePointer() >= 1 && *thread->GetBytePointer() <= 8)
		*thread << CText_Get(gameTexts, gxt);
	else
		strcpy((char *)GetScriptParamPointer(thread, 1), CText_Get(gameTexts, gxt));
	return OR_CONTINUE;
}

//0AEA=2,%2d% = actor_struct %1d% handle
OpcodeResult opcode_0AEA(CRunningScript *thread)
{
	DWORD struc;
	*thread >> struc;
	*thread << GetPedHandle(pedPool, struc);
	return OR_CONTINUE;
}

//0AEB=2,%2d% = car_struct %1d% handle
OpcodeResult opcode_0AEB(CRunningScript *thread)
{
	DWORD struc;
	*thread >> struc;
	*thread << GetVehHandle(vehPool, struc);
	return OR_CONTINUE;
}

//0AEC=2,%2d% = object_struct %1d% handle
OpcodeResult opcode_0AEC(CRunningScript *thread)
{
	DWORD struc;
	*thread >> struc;
	*thread << GetObjHandle(objPool, struc);
	return OR_CONTINUE;
}
