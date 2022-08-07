#include <cstdint>
#include <ctype.h>

#define SEEK_SET 0
#define SEEK_CUR 1
#define SEEK_END 2

typedef int FILE;

FILE* (*rw_open)(const char*, const char*) __attribute__((section(".data"))) = (FILE* (*)(const char*, const char*))0x00233210;
size_t (*rw_read)(FILE *, void *, size_t) __attribute__((section(".data"))) = (size_t (*)(FILE *, void *, size_t))0x00233250;
int (*rw_seek)(FILE *, long int, int) __attribute__((section(".data"))) = (int (*)(FILE *, long int, int))0x002332B0;
int (*rw_close)(FILE *) __attribute__((section(".data"))) = (int (*)(FILE *))0x00233370;
char* (*loadLine)(FILE *) __attribute__((section(".data"))) = (char* (*)(FILE *))0x003C70A0;
int (*setDirectory)(const char *) __attribute__((section(".data"))) = (int (*)(const char *))0x002330B0;

int (*printf)(const char *, ...) __attribute__((section(".data"))) = (int (*)(const char *, ...))0x0054F7D0;

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef struct
{
	u8 ident[16];  // struct definition for ELF object header
	u16 type;
	u16 machine;
	u32 version;
	u32 entry;
	u32 phoff;
	u32 shoff;
	u32 flags;
	u16 ehsize;
	u16 phentsize;
	u16 phnum;
	u16 shentsize;
	u16 shnum;
	u16 shstrndx;
} elf_header_t;

typedef struct
{
     uint32_t   sh_name;
     uint32_t   sh_type;
     uint32_t   sh_flags;
     uint32_t sh_addr;
     uint32_t   sh_offset;
     uint32_t   sh_size;
     uint32_t   sh_link;
     uint32_t   sh_info;
     uint32_t   sh_addralign;
     uint32_t   sh_entsize;
} section_header_t;

int load_default_plugins(){
    elf_header_t elf_header;
    section_header_t section_header;

    setDirectory("plugins");

    FILE* plugins = rw_open("plugins.ini", "r");

    for(char* i = loadLine(plugins); i ; i = loadLine(plugins)){
        if ( *i != '#' && *i )
        {
            printf("Plugin loader: Loading %s\n", i);

            FILE* elf = rw_open(i, "rb");

            rw_read(elf, &elf_header, sizeof(elf_header_t));
            rw_seek(elf, elf_header.shoff+40, SEEK_SET);
            rw_read(elf, &section_header, sizeof(section_header_t));

            printf("text section - address: 0x%x | offset: 0x%x | size: %d\n", section_header.sh_addr, section_header.sh_offset, section_header.sh_size);

            rw_seek(elf, section_header.sh_offset, SEEK_SET);
            rw_read(elf, (void*)section_header.sh_addr, section_header.sh_size);
            rw_close(elf);
        }
    }

    setDirectory("");

    return 0;

}