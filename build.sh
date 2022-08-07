#!/bin/bash

cd src
mips64r5900el-ps2-elf-g++ -fomit-frame-pointer -fno-exceptions \
-fno-asynchronous-unwind-tables -fno-unwind-tables -nostartfiles -nostdlib \
-fno-builtin-memcmp -fno-builtin-memcpy -fno-builtin-memset \
-fno-builtin-printf -fno-builtin-strcat -fno-builtin-strchr \
-fno-builtin-strcmp -fno-builtin-strcpy -fno-builtin-strlen \
-fno-builtin-strncpy -fno-builtin-strrchr -fno-builtin-strncmp \
-fno-builtin-sprintf -fno-builtin-floor -fno-builtin-pow \
-fno-builtin-malloc -fno-builtin-free \
-Wl,\
--section-start=.text=0x0035C7E8 \
 -T format.ld wrappers.cpp main.cpp -o cleo.dep 

mips64r5900el-ps2-elf-g++ -Wno-pointer-arith -fomit-frame-pointer -fno-exceptions \
-fno-asynchronous-unwind-tables -fno-unwind-tables -nostartfiles -nostdlib \
-fno-builtin-memcmp -fno-builtin-memcpy -fno-builtin-memset \
-fno-builtin-printf -fno-builtin-strcat -fno-builtin-strchr \
-fno-builtin-strcmp -fno-builtin-strcpy -fno-builtin-strlen \
-fno-builtin-strncpy -fno-builtin-strrchr -fno-builtin-strncmp \
-fno-builtin-sprintf -fno-builtin-floor -fno-builtin-pow \
-fno-builtin-malloc -fno-builtin-free \
-Wl,\
--section-start=.text=0x1FA720 \
 -T format.ld wrappers.cpp ScriptProcess_hook.cpp -o scriptprocess_hook.dep

 mips64r5900el-ps2-elf-g++ -Wno-pointer-arith -fomit-frame-pointer -fno-exceptions \
-fno-asynchronous-unwind-tables -fno-unwind-tables -nostartfiles -nostdlib \
-fno-builtin-memcmp -fno-builtin-memcpy -fno-builtin-memset \
-fno-builtin-printf -fno-builtin-strcat -fno-builtin-strchr \
-fno-builtin-strcmp -fno-builtin-strcpy -fno-builtin-strlen \
-fno-builtin-strncpy -fno-builtin-strrchr -fno-builtin-strncmp \
-fno-builtin-sprintf -fno-builtin-floor -fno-builtin-pow \
-fno-builtin-malloc -fno-builtin-free \
-Wl,\
--section-start=.text=0x5F91B8 \
 -T format.ld table.c -o opcode_table.dep 