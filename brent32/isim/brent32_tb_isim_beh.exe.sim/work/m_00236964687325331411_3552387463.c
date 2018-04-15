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



static void Gate_198_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 2520U);
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
    t5 = (t0 + 2920);
    xsi_driver_vfirst_trans_rf(t5, 0, 0, t2, 0, 0);
    t6 = (t0 + 2840);
    *((int *)t6) = 1;

LAB1:    return;
}


extern void work_m_00236964687325331411_3552387463_init()
{
	static char *pe[] = {(void *)Gate_198_0};
	xsi_register_didat("work_m_00236964687325331411_3552387463", "isim/brent32_tb_isim_beh.exe.sim/work/m_00236964687325331411_3552387463.didat");
	xsi_register_executes(pe);
}
