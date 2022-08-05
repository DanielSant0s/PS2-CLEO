#include <cstdint>
#include <ctype.h>

typedef uint64_t QWORD;
typedef uint8_t BYTE;
typedef uint16_t WORD;
typedef uint32_t DWORD;
typedef uint64_t QWORD;

#define SEEK_SET 0
#define SEEK_CUR 1
#define SEEK_END 2

typedef int FILE;

typedef struct RwFileFunction{
	int padding;  
	FILE* (*rwfopen)(const char*, const char*);
	int (*rwfclose)(FILE *);
	size_t (*rwfread)(FILE *, void *, size_t);   
	size_t (*rwfwrite)(FILE *, const void *, size_t);
	int (*rwfgets)(int, int, int);
	int (*rwfputs)(int, int); 
	int (*rwfeof)(FILE*);   
	int (*rwfseek)(FILE *, long int, int);  
	int (*rwfflush)(int*);
	int (*rwftell)(FILE*);  
} RwFileFunction;

extern RwFileFunction* (*RwOsGetFileInterface)(void) __attribute__((section(".data")));

extern void (*FlushCache)(int) __attribute__((section(".data")));

extern FILE* (*rw_open)(const char*, const char*) __attribute__((section(".data")));
extern size_t (*rw_read)(FILE *, void *, size_t) __attribute__((section(".data")));
extern int (*rw_seek)(FILE *, long int, int) __attribute__((section(".data")));
extern int (*rw_close)(FILE *) __attribute__((section(".data")));
extern int (*printf)(const char *, ...) __attribute__((section(".data")));

extern void* (*malloc)(size_t) __attribute__((section(".data")));
extern void (*free)(void*) __attribute__((section(".data")));
extern void* (*memset)(void *, int, size_t) __attribute__((section(".data")));
extern void* (*memcpy)(void *, const void *, size_t) __attribute__((section(".data")));
extern int (*memcmp)(const void *, const void *, size_t) __attribute__((section(".data")));

extern size_t (*strlen)(const char *) __attribute__((section(".data")));
extern int (*strcmp)(const char *, const char *) __attribute__((section(".data")));
extern char* (*strcpy)(char *, const char *) __attribute__((section(".data")));
extern char* (*strcat)(char *, const char *) __attribute__((section(".data")));
extern char* (*strncpy)(char *, const char *, size_t) __attribute__((section(".data")));

extern int (*sprintf)(char *, const char *, ...) __attribute__((section(".data")));
extern float (*floor)(float) __attribute__((section(".data")));
extern float (*pow)(float, float) __attribute__((section(".data")));
extern int64_t (*__extendsfdf2)(float) __attribute__((section(".data")));

#include "CTheScripts.h"

extern int (*sceSifLoadModule)(char*, int, int) __attribute__((section(".data")));
extern void (*loadIOPModules2)(void) __attribute__((section(".data")));

extern size_t* CTimer_m_snTimeInMilliseconds  __attribute__((section(".data")));
extern void* CTheScripts_ScriptSpace __attribute__((section(".data")));
extern bool* CTheScripts_FailCurrentMission __attribute__((section(".data")));
extern int* _StyledText_2 __attribute__((section(".data")));

extern bool (*CCutsceneMgr_IsCutsceneSkipButtonBeingPressed)() __attribute__((section(".data")));
extern void (*CRunningScript_DoDeatharrestCheck)(CRunningScript *) __attribute__((section(".data")));
extern void (*CTheScripts_ReinitialiseSwitchStatementData)()  __attribute__((section(".data")));

extern int (*opcodeHandlerTable)(CRunningScript*, int)  __attribute__((section(".data")));

extern SCRIPT_VAR* opcodeParams __attribute__((section(".data")));
extern void (*SetScriptParams)(CRunningScript *, int) __attribute__((section(".data")));
extern void (*GetScriptParams)(CRunningScript *, int) __attribute__((section(".data")));
extern void (*GetScriptStringParam)(CRunningScript *, char *, uint8_t) __attribute__((section(".data")));
extern SCRIPT_VAR* (*GetScriptParamPointer)(CRunningScript *, int) __attribute__((section(".data")));

extern void (*SetScriptCondResult)(CRunningScript *, bool) __attribute__((section(".data")));

extern void (*PrintHelp)(char*, int, int, int) __attribute__((section(".data")));
extern void (*PrintBig)(const char *, int, uint16_t) __attribute__((section(".data")));
extern void (*Print)(const char *src, int, bool, bool) __attribute__((section(".data")));
extern void (*PrintNow)(const char *src, int, bool, bool) __attribute__((section(".data")));

extern DWORD* pedPool __attribute__((section(".data")));
extern DWORD* vehPool __attribute__((section(".data")));
extern DWORD* objPool __attribute__((section(".data")));

extern int (*GetPedStruct)(DWORD *, int) __attribute__((section(".data")));
extern int (*GetVehStruct)(DWORD *, int) __attribute__((section(".data")));
extern int (*GetObjStruct)(DWORD *, int) __attribute__((section(".data")));

extern int (*GetPedHandle)(DWORD *, int) __attribute__((section(".data")));
extern int (*GetVehHandle)(DWORD *, int) __attribute__((section(".data")));
extern int (*GetObjHandle)(DWORD *, int) __attribute__((section(".data")));

extern const char* (*CText_Get)(DWORD, const char*) __attribute__((section(".data")));

extern DWORD gameTexts __attribute__((section(".data")));
