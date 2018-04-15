/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif



static void Gate_78_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 2680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    t2 = xsi_get_transient_memory(8);
    xsi_vlog_XorGate(t2, 2, t3, t4);
    t5 = (t0 + 3344);
    xsi_driver_vfirst_trans_rf(t5, 0, 0, t2, 0, 0);
    t6 = (t0 + 3248);
    *((int *)t6) = 1;

LAB1:    return;
}

static void Gate_79_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    t2 = xsi_get_transient_memory(8);
    xsi_vlog_AndGate(t2, 2, t3, t4);
    t5 = (t0 + 3408);
    xsi_driver_vfirst_trans_rf(t5, 0, 0, t2, 0, 0);
    t6 = (t0 + 3264);
    *((int *)t6) = 1;

LAB1:    return;
}


extern void work_m_18232238636177425735_4122600708_init()
{
	static char *pe[] = {(void *)Gate_78_0,(void *)Gate_79_1};
	xsi_register_didat("work_m_18232238636177425735_4122600708", "isim/cia32_tb_isim_beh.exe.sim/work/m_18232238636177425735_4122600708.didat");
	xsi_register_executes(pe);
}
