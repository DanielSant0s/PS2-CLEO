#include "wrappers.h"

void (*FlushCache)(int) = (void (*)(int))0x0053BA20;

FILE* (*rw_open)(const char*, const char*) = (FILE* (*)(const char*, const char*))0x00233210;
size_t (*rw_read)(FILE *, void *, size_t) = (size_t (*)(FILE *, void *, size_t))0x00233250;
int (*rw_seek)(FILE *, long int, int) = (int (*)(FILE *, long int, int))0x002332B0;
int (*rw_close)(FILE *) = (int (*)(FILE *))0x00233370;

RwFileFunction* (*RwOsGetFileInterface)(void)  = (RwFileFunction* (*)(void))0x003332B8;

int (*printf)(const char *, ...)  = (int (*)(const char *, ...))0x0054F7D0;
void* (*malloc)(size_t)  = (void* (*)(size_t))0x00337010;
void (*free)(void*)  = (void (*)(void*))0x0054D838;
void* (*memset)(void *, int, size_t)  = (void* (*)(void *, int, size_t))0x0054E568;
void* (*memcpy)(void *, const void *, size_t)  = (void* (*)(void *, const void *, size_t))0x0054E3B0;
int (*memcmp)(const void *, const void *, size_t)  = (int (*)(const void *, const void *, size_t))0x0054E318;
size_t (*strlen)(const char *)  = (size_t (*)(const char *))0x005517B8;
int (*strcmp)(const char *, const char *)  = (int (*)(const char *, const char *))0x00551558;
char* (*strcpy)(char *, const char *)  = (char* (*)(char *, const char *))0x005516A0;
char* (*strcat)(char *, const char *)  = (char* (*)(char *, const char *))0x00551298;
char* (*strncpy)(char *, const char *, size_t) = (char* (*)(char *, const char *, size_t))0x00551D80;

int (*sprintf)(char *, const char *, ...) = (int (*)(char *, const char *, ...))0x00550F10;
float (*floor)(float) = (float (*)(float))0x0053AF48;
float (*pow)(float, float) = (float (*)(float, float))0x00537468;
int64_t (*__extendsfdf2)(float) = (int64_t (*)(float))0x00531140;


int (*sceSifLoadModule)(char*, int, int) = (int (*)(char*, int, int))0x005449A0;
void (*loadIOPModules2)(void) = (void (*)())0x00245D60;

size_t* CTimer_m_snTimeInMilliseconds  = (size_t*)0x0066BA14;
void* CTheScripts_ScriptSpace = (void*)0x006B1FF0;
bool* CTheScripts_FailCurrentMission = (bool*)0x0066B564;
int* _StyledText_2 = (int*)0x007C2910;

bool (*CCutsceneMgr_IsCutsceneSkipButtonBeingPressed)() = (bool (*)())0x00304860;
void (*CRunningScript_DoDeatharrestCheck)(CRunningScript *) = (void (*)(CRunningScript *))0x0030A7F0;
void (*CTheScripts_ReinitialiseSwitchStatementData)()   = (void (*)())0x005008F0;

int (*opcodeHandlerTable)(CRunningScript*, int)  = (int (*)(CRunningScript*, int))0x5F91C0;

SCRIPT_VAR* opcodeParams = (SCRIPT_VAR*)0x006FDFB0;
void (*SetScriptParams)(CRunningScript *, int) = (void (*)(CRunningScript *, int))0x001F7D20;
void (*GetScriptParams)(CRunningScript *, int) = (void (*)(CRunningScript *, int))0x001F77D0;
void (*GetScriptStringParam)(CRunningScript *, char *, uint8_t) = (void (*)(CRunningScript *, char *, uint8_t))0x001F7200;
SCRIPT_VAR* (*GetScriptParamPointer)(CRunningScript *, int) = (SCRIPT_VAR* (*)(CRunningScript *, int))0x001F8300;
void (*SetScriptCondResult)(CRunningScript *, bool) = (void(*)(CRunningScript *, bool))0x003077F0;

void (*PrintHelp)(char*, int, int, int) = (void (*)(char*, int, int, int))0x002A9170;
void (*PrintBig)(const char *, int, uint16_t) = (void (*)(const char *, int, uint16_t))0x0018BCD0;
void (*Print)(const char *src, int, bool, bool) = (void (*)(const char *src, int, bool, bool))0x0018B570;
void (*PrintNow)(const char *src, int, bool, bool) = (void (*)(const char *src, int, bool, bool))0x0018B8B0;

DWORD* pedPool = (DWORD*)0x0066B918;
DWORD* vehPool = (DWORD*)0x0066B91C;
DWORD* objPool = (DWORD*)0x0066B924;

int (*GetPedStruct)(DWORD *, int) = (int (*)(DWORD *, int))0x001FFBB0;
int (*GetVehStruct)(DWORD *, int) = (int (*)(DWORD *, int))0x001FFB70;
int (*GetObjStruct)(DWORD *, int) = (int (*)(DWORD *, int))0x001FFB30;

int (*GetPedHandle)(DWORD *, int) = (int (*)(DWORD *, int))0x0019FA20;
int (*GetVehHandle)(DWORD *, int) = (int (*)(DWORD *, int))0x0017EF20;
int (*GetObjHandle)(DWORD *, int) = (int (*)(DWORD *, int))0x00132CC0;

const char* (*CText_Get)(DWORD, const char*) = (const char* (*)(DWORD, const char*))0x0018ED90;

DWORD gameTexts = 0x0069F290;