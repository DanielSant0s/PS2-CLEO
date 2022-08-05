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
--section-start=._ZN14CRunningScript7ProcessEv=0x1FA720 \
 -T format.ld main.cpp -o cleo.elf 

#mips64r5900el-ps2-elf-objdump -S cleo.elf >> cleo.s