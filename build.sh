#!/bin/bash

cd src
mips64r5900el-ps2-elf-g++ -nostartfiles -nostdlib -Wl,\
--section-start=.opcodeparams=0x6FDFB0,\
--section-start=.setparams=0x1F7D20,\
--section-start=.getparams=0x1F77D0,\
--section-start=.getstrparam=0x1F7200,\
--section-start=.getparamptr=0x1F8300,\
--section-start=.memset=0x54E568,\
--section-start=.strncpy=0x551D80,\
--section-start=.strcpy=0x5516A0,\
--section-start=.sprintf=0x550F10,\
--section-start=.floor=0x53AF48,\
--section-start=.pow=0x537468,\
--section-start=.__extendsfdf2=0x531140,\
--section-start=.style2=0x7C2910,\
--section-start=.PrintHelp=0x2A9170,\
--section-start=._ZN11CTheScripts31ReinitialiseSwitchStatementDataEv=0x5008F0,\
--section-start=._ZN6CTimer22m_snTimeInMillisecondsE=0x66BA14,\
--section-start=._ZN11CTheScripts18FailCurrentMissionE=0x66B564,\
--section-start=._ZN14CRunningScript18DoDeatharrestCheckEv=0x30A7F0,\
--section-start=._ZN11CTheScripts11ScriptSpaceE=0x6B1FF0,\
--section-start=._ZN12CCutsceneMgr32IsCutsceneSkipButtonBeingPressedEv=0x304860,\
--section-start=._ZN14CRunningScript7ProcessEv=0x1FA720,\
--section-start=.opcodeTable=0x5F91C0,\
--section-start=.GetPedStruct=0x1FFBB0,\
--section-start=.pedPool=0x66B918,\
--section-start=.GetVehStruct=0x1FFB70,\
--section-start=.vehPool=0x66B91C,\
--section-start=.GetObjStruct=0x1FFB30,\
--section-start=.objPool=0x66B924 \
 -T format.ld -msingle-float main.cpp -o cleo.elf 

#mips64r5900el-ps2-elf-objdump -S cleo.elf >> cleo.s