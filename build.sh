#!/bin/bash

cd src
mips64r5900el-ps2-elf-g++ -Wl,--section-start=.opcodeparams=0x6FDFB0,\
--section-start=.getparams=0x1F77D0,\
--section-start=.getstrparam=0x1F7200,\
--section-start=.getparamptr=0x1F8300,\
--section-start=.memset=0x54E568,\
--section-start=.strncpy=0x551D80,\
--section-start=.strcpy=0x5516A0,\
--section-start=.sprintf=0x550F10,\
--section-start=.itoa=0x36069C,\
--section-start=.nonestr=0x360F04 \
main.cpp -o cleo.elf 