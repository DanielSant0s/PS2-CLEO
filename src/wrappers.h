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
/*
extern RwFileFunction* (*RwOsGetFileInterface)(void);

extern void (*FlushCache)(int);

extern FILE* (*rw_open)(const char*, const char*);
extern size_t (*rw_read)(FILE *, void *, size_t);
extern int (*rw_seek)(FILE *, long int, int);
extern int (*rw_close)(FILE *);
extern int (*printf)(const char *, ...);

extern void* (*malloc)(size_t);
extern void (*free)(void*);
extern void* (*memset)(void *, int, size_t);
extern void* (*memcpy)(void *, const void *, size_t);
extern int (*memcmp)(const void *, const void *, size_t);

extern size_t (*strlen)(const char *);
extern int (*strcmp)(const char *, const char *);
extern char* (*strcpy)(char *, const char *);
extern char* (*strcat)(char *, const char *);

extern char * strdup(const char * s);
*/