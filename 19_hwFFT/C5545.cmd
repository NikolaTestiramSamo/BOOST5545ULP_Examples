/****************************************************************************/
/*  C5545.cmd                                                               */
/*  Copyright (c) 2015  Texas Instruments Incorporated                      */
/*  Author: Rafael de Souza                                                 */
/*                                                                          */
/*    Description: This file is a sample linker command file that can be    */
/*                 used for linking programs built with the C compiler and  */
/*                 running the resulting .out file on a C5545.              */
/*                 Use it as a guideline.  You will want to                 */
/*                 change the memory layout to match your specific          */
/*                 target system.  You may want to change the allocation    */
/*                 scheme according to the size of your program.            */
/*                                                                          */
/****************************************************************************/

MEMORY
{
    MMR:     o = 0x000000  l = 0x0000c0  /* 192B Memory Mapped Registers */
    DARAM0:  o = 0x0000C0  l = 0x001F40  /* 8kB Dual Access RAM 0 */
    DARAM1:  o = 0x002000  l = 0x002000  /* 8kB Dual Access RAM 1 */
    DARAM2:  o = 0x004000  l = 0x002000  /* 8kB Dual Access RAM 2 */
    DARAM3:  o = 0x006000  l = 0x002000  /* 8kB Dual Access RAM 3 */  
    DARAM4:  o = 0x008000  l = 0x002000  /* 8kB Dual Access RAM 4 */
    DARAM5:  o = 0x00A000  l = 0x002000  /* 8kB Dual Access RAM 5 */
    DARAM6:  o = 0x00C000  l = 0x002000  /* 8kB Dual Access RAM 6 */
    DARAM7:  o = 0x00E000  l = 0x002000  /* 8kB Dual Access RAM 7 */
  
    SARAM0:   o = 0x010000  l = 0x002000  /* 8kB Single Access RAM 0 */
    SARAM1:   o = 0x012000  l = 0x002000  /* 8kB Single Access RAM 1 */
    SARAM2:   o = 0x014000  l = 0x002000  /* 8kB Single Access RAM 2 */
    SARAM3:   o = 0x016000  l = 0x002000  /* 8kB Single Access RAM 3 */  
    SARAM4:   o = 0x018000  l = 0x002000  /* 8kB Single Access RAM 4 */
    SARAM5:   o = 0x01A000  l = 0x002000  /* 8kB Single Access RAM 5 */
    SARAM6:   o = 0x01C000  l = 0x002000  /* 8kB Single Access RAM 6 */
    SARAM7:   o = 0x01E000  l = 0x002000  /* 8kB Single Access RAM 7 */
    SARAM8:   o = 0x020000  l = 0x002000  /* 8kB Single Access RAM 8 */
    SARAM9:   o = 0x022000  l = 0x002000  /* 8kB Single Access RAM 9 */
    SARAM10:  o = 0x024000  l = 0x002000  /* 8kB Single Access RAM 10 */
    SARAM11:  o = 0x026000  l = 0x002000  /* 8kB Single Access RAM 11 */  
    SARAM12:  o = 0x028000  l = 0x002000  /* 8kB Single Access RAM 12 */
    SARAM13:  o = 0x02A000  l = 0x002000  /* 8kB Single Access RAM 13 */
    SARAM14:  o = 0x02C000  l = 0x002000  /* 8kB Single Access RAM 14 */
    SARAM15:  o = 0x02E000  l = 0x002000  /* 8kB Single Access RAM 15 */
    SARAM16:  o = 0x030000  l = 0x002000  /* 8kB Single Access RAM 16 */
    SARAM17:  o = 0x032000  l = 0x002000  /* 8kB Single Access RAM 17 */
    SARAM18:  o = 0x034000  l = 0x002000  /* 8kB Single Access RAM 18 */
    SARAM19:  o = 0x036000  l = 0x002000  /* 8kB Single Access RAM 19 */  
    SARAM20:  o = 0x038000  l = 0x002000  /* 8kB Single Access RAM 20 */
    SARAM21:  o = 0x03A000  l = 0x002000  /* 8kB Single Access RAM 21 */
    SARAM22:  o = 0x03C000  l = 0x002000  /* 8kB Single Access RAM 22 */
    SARAM23:  o = 0x03E000  l = 0x002000  /* 8kB Single Access RAM 23 */
    SARAM24:  o = 0x040000  l = 0x002000  /* 8kB Single Access RAM 24 */
    SARAM25:  o = 0x042000  l = 0x002000  /* 8kB Single Access RAM 25 */
    SARAM26:  o = 0x044000  l = 0x002000  /* 8kB Single Access RAM 26 */
    SARAM27:  o = 0x046000  l = 0x002000  /* 8kB Single Access RAM 27 */  
    SARAM28:  o = 0x048000  l = 0x002000  /* 8kB Single Access RAM 28 */
    SARAM29:  o = 0x04A000  l = 0x002000  /* 8kB Single Access RAM 29 */
    SARAM30:  o = 0x04C000  l = 0x002000  /* 8kB Single Access RAM 30 */
    SARAM31:  o = 0x04E000  l = 0x002000  /* 8kB Single Access RAM 31 */
                    
    ROM:     o = 0xFE0000  l = 0x01FF00  /* 128kB ROM (MPNMC=0) or CS5 (MPNMC=1) */
    VECS:    o = 0xFFFF00  l = 0x000100  /* reset vector */
}                   
                    
SECTIONS            
{                   
    vectors (NOLOAD)  >  VECS  /* If MPNMC = 1, remove the NOLOAD directive */
    .cinit            >  DARAM0
	/* Arbitrary assignment of memory segments to .text section.   */
	/* Can be expanded or reduced observing limitations of SPRAA46 */ 
    .text             >> SARAM0|SARAM1|SARAM2|SARAM3|SARAM4  
    .stack            >  DARAM0|DARAM1
    .sysstack         >  DARAM0|DARAM1
    .sysmem           >  DARAM3|DARAM4
    .data             >  DARAM4
    .cio              >> DARAM0|DARAM2
    .bss              >  DARAM5
    .const            >  DARAM0
    data_br_buf		  >  DARAM2
    scratch_buf		  >  DARAM2
}

/*** Add the following code to the linker command file to call HWAFFT Routines from ROM ***/
/* HWAFFT Routines ROM Addresses */
_hwafft_br = 0x00fefe9c;
_hwafft_8pts = 0x00fefeb0;
_hwafft_16pts = 0x00feff9f;
_hwafft_32pts = 0x00ff00f5;
_hwafft_64pts = 0x00ff03fe;
_hwafft_128pts = 0x00ff0593;
_hwafft_256pts = 0x00ff07a4;
_hwafft_512pts = 0x00ff09a2;
_hwafft_1024pts = 0x00ff0c1c;