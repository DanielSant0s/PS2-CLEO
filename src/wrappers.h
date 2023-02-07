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

#define O_RDONLY 0x0001

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
extern char* (*loadLine)(FILE *) __attribute__((section(".data")));
extern int (*setDirectory)(const char *) __attribute__((section(".data")));


struct sce_stat {
        unsigned int    st_mode;       
                                    
        unsigned int    st_attr;       
        unsigned int    st_size;       
        unsigned char   st_ctime[8];   
        unsigned char   st_atime[8];   
        unsigned char   st_mtime[8];   
        unsigned int    st_hisize;     
        unsigned int    st_private[6]; 
};

struct sce_dirent {
        struct sce_stat d_stat; 
        char d_name[256];       
        void    *d_private;     
};

extern int (*open)(const char *pathname, int flags) __attribute__((section(".data")));
extern int (*close)(int fd) __attribute__((section(".data")));
extern size_t (*lseek)(int fd, size_t offset, int whence) __attribute__((section(".data")));
extern size_t (*read)(int fd, void *buf, size_t count) __attribute__((section(".data")));
extern size_t (*write)(int fd, const void *buf, size_t count) __attribute__((section(".data")));
extern int (*chdir)(const char *name) __attribute__((section(".data")));

extern int (*sceDopen)(const char *dirname) __attribute__((section(".data")));
extern int (*sceDclose)(int fd) __attribute__((section(".data")));
extern int (*sceDread)(int fd, struct sce_dirent *buf) __attribute__((section(".data")));
extern int (*sceRemove)(const char *filename) __attribute__((section(".data")));
extern int (*sceMkdir)(const char *dirname, int flag) __attribute__((section(".data")));
extern int (*sceRmdir)(const char *dirname) __attribute__((section(".data")));

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

extern int (**opcodeHandlerTable)(CRunningScript*, int)  __attribute__((section(".data")));

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

extern DWORD** pedPool __attribute__((section(".data")));
extern DWORD** vehPool __attribute__((section(".data")));
extern DWORD** objPool __attribute__((section(".data")));

extern DWORD* (*GetPedStruct)(DWORD *, int) __attribute__((section(".data")));
extern DWORD* (*GetVehStruct)(DWORD *, int) __attribute__((section(".data")));
extern DWORD* (*GetObjStruct)(DWORD *, int) __attribute__((section(".data")));

extern int (*GetPedHandle)(DWORD *, int) __attribute__((section(".data")));
extern int (*GetVehHandle)(DWORD *, int) __attribute__((section(".data")));
extern int (*GetObjHandle)(DWORD *, int) __attribute__((section(".data")));

extern const char* (*CText_Get)(DWORD, const char*) __attribute__((section(".data")));

extern DWORD gameTexts __attribute__((section(".data")));
