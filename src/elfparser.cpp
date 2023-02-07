#include <cstdint>
#include <ctype.h>

#define SEEK_SET 0
#define SEEK_CUR 1
#define SEEK_END 2

typedef int FILE;

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

static void* (*malloc)(size_t) __attribute__((section(".data"))) = (void* (*)(size_t))0x001005E0;
static void (*free)(void*) __attribute__((section(".data"))) = (void (*)(void*))0x00100780;

int (*printf)(const char *, ...) __attribute__((section(".data"))) = (int (*)(const char *, ...))0x0054F7D0;

int (*sceOpen)(const char *pathname, int flags) __attribute__((section(".data"))) = (int (*)(const char *, int))0x00540B28;
int (*sceClose)(int fd) __attribute__((section(".data"))) = (int (*)(int))0x00540DB8;
size_t (*sceLseek)(int fd, size_t offset, int whence) __attribute__((section(".data"))) = (size_t (*)(int, size_t, int))0x00540F30;
size_t (*sceRead)(int fd, void *buf, size_t count) __attribute__((section(".data"))) = (size_t (*)(int, void *, size_t))0x00541170;
size_t (*sceWrite)(int fd, const void *buf, size_t count) __attribute__((section(".data"))) = (size_t (*)(int, const void *, size_t))0x005413E0;
int (*sceChdir)(const char *name) __attribute__((section(".data"))) = (int (*)(const char *))0x00542D20;

int (*sceDopen)(const char *dirname) __attribute__((section(".data"))) = (int (*)(const char *))0x00542388;
int (*sceDclose)(int fd) __attribute__((section(".data"))) = (int (*)(int))0x00542450;
int (*sceDread)(int fd, struct sce_dirent *buf) __attribute__((section(".data"))) = (int (*)(int, struct sce_dirent *))0x005425B8;
int (*sceRemove)(const char *filename) __attribute__((section(".data"))) = (int (*)(const char *))0x00542B18;
int (*sceMkdir)(const char *dirname, int flag) __attribute__((section(".data"))) = (int (*)(const char *, int))0x00541DE0;
int (*sceRmdir)(const char *dirname) __attribute__((section(".data"))) = (int (*)(const char *))0x00541F98;

size_t (*strlen)(const char *) __attribute__((section(".data")))  = (size_t (*)(const char *))0x005517B8;
char* (*strcat)(char *, const char *)  __attribute__((section(".data"))) = (char* (*)(char *, const char *))0x00551298;
char* (*strcpy)(char *, const char *) __attribute__((section(".data")))  = (char* (*)(char *, const char *))0x005516A0;

//extern int  sceRename( const char *oldname, const char *newname);

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
    u32 sh_name;
    u32 sh_type;
    u32 sh_flags;
    u32 sh_addr;
    u32 sh_offset;
    u32 sh_size;
    u32 sh_link;
    u32 sh_info;
    u32 sh_addralign;
    u32 sh_entsize;
} section_header_t;

int load_default_plugins(){
    elf_header_t elf_header;
    section_header_t shstr_header;
    struct sce_dirent dirbuf;
    char* section_names = NULL;
    const char* plugin_dir = "mass:PS2_SA/plugins/";
    char* dest_file = NULL;

    int dirfd = sceDopen(plugin_dir);

    sceDread(dirfd, &dirbuf);
    sceDread(dirfd, &dirbuf);

    while (sceDread(dirfd, &dirbuf) > 0){
        dest_file = (char*)malloc(strlen(plugin_dir) + strlen(dirbuf.d_name) + 1);

        strcpy(dest_file, plugin_dir);
        strcat(dest_file, dirbuf.d_name);

        int elf = sceOpen(dest_file, 1);

        free(dest_file);

        sceRead(elf, &elf_header, sizeof(elf_header_t));

        printf("Plugin loader: Loading %s\n", dirbuf.d_name);

        if(elf_header.type == 2){

            sceLseek(elf, elf_header.shoff + elf_header.shstrndx * sizeof(section_header_t), SEEK_SET);
            sceRead(elf, &shstr_header, sizeof(section_header_t));

            section_names = (char*)malloc(shstr_header.sh_size);
            sceLseek(elf, shstr_header.sh_offset, SEEK_SET);
            sceRead(elf, section_names, shstr_header.sh_size);

            section_header_t* section_header = (section_header_t*)malloc(sizeof(section_header_t)*elf_header.shnum);

            sceLseek(elf, elf_header.shoff, SEEK_SET);
            sceRead(elf, section_header, sizeof(section_header_t)*elf_header.shnum);

            for(int j = 0; j < elf_header.shnum; j++){
                printf("Plugin loader: %s section - address: 0x%x | offset: 0x%x | size: %d\n", section_names + section_header[j].sh_name, section_header[j].sh_addr, section_header[j].sh_offset, section_header[j].sh_size);
            }

            sceLseek(elf, section_header[1].sh_offset, SEEK_SET);
            sceRead(elf, (void*)section_header[1].sh_addr, section_header[1].sh_size);

            free(section_names);
            free(section_header);
        }

        sceClose(elf);
    }

    return 0;

}