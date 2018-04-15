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



static void Gate_101_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 3160U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    t2 = xsi_get_transient_memory(8);
    xsi_vlog_AndGate(t2, 2, t3, t4);
    t5 = (t0 + 4352);
    xsi_driver_vfirst_trans_rf(t5, 0, 0, t2, 0, 0);
    t6 = (t0 + 4224);
    *((int *)t6) = 1;

LAB1:    return;
}

static void Gate_102_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3408U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = xsi_get_transient_memory(8);
    xsi_vlog_notGate(t2, t3);
    t4 = (t0 + 4416);
    xsi_driver_vfirst_trans_rf(t4, 0, 0, t2, 0, 0);
    t5 = (t0 + 4240);
    *((int *)t5) = 1;

LAB1:    return;
}

static void Gate_103_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 3656U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = xsi_get_transient_memory(8);
    xsi_vlog_AndGate(t2, 2, t3, t4);
    t5 = (t0 + 4480);
    xsi_driver_vfirst_trans_rf(t5, 0, 0, t2, 0, 0);
    t6 = (t0 + 4256);
    *((int *)t6) = 1;

LAB1:    return;
}

static void Gate_104_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 3904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 2008U);
    t4 = *((char **)t2);
    t2 = xsi_get_transient_memory(8);
    xsi_vlog_OrGate(t2, 2, t3, t4);
    t5 = (t0 + 4544);
    xsi_driver_vfirst_trans_rf(t5, 0, 0, t2, 0, 0);
    t6 = (t0 + 4272);
    *((int *)t6) = 1;

LAB1:    return;
}


extern void work_m_16754887494291035038_4191813325_init()
{
	static char *pe[] = {(void *)Gate_101_0,(void *)Gate_102_1,(void *)Gate_103_2,(void *)Gate_104_3};
	xsi_register_didat("work_m_16754887494291035038_4191813325", "isim/cska32_tb_isim_beh.exe.sim/work/m_16754887494291035038_4191813325.didat");
	xsi_register_executes(pe);
}
