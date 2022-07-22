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
						sprintf(bufaiter, "%08X", opcodeParams[0].dwParam);
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

int main(int argc, char *argv[])
{

    CRunningScript* test;
	opcode_0AD3(test);

  return 0;
}
