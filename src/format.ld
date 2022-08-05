/*
# _____     ___ ____     ___ ____
#  ____|   |    ____|   |        | |____|
# |     ___|   |____ ___|    ____| |    \    PS2DEV Open Source Project.
#-----------------------------------------------------------------------
# Copyright 2001-2004, ps2dev - http://www.ps2dev.org
# Licenced under Academic Free License version 2.0
# Review ps2sdk README & LICENSE files for further details.
#
# Linkfile script for ee-ld
*/

SECTIONS {
	.text 0x0035C7E8: {
		*(.text)
		*(.text.*)
		QUAD(0)
		*(.gnu.linkonce.t*)
		*(.rodata)
		*(.rodata.*)
		*(.gnu.linkonce.r*)
		*(.data)
		*(.data.*)
		*(.gnu.linkonce.d*)
		*(.rdata)
		*(.gcc_except_table)
	}

	_gp = ALIGN(128) + 0x7ff0;

}