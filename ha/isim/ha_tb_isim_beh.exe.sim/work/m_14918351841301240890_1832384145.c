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
static const char *ng0 = "time=%.3f ns, a=%b, b=%b, Sum= %b, Cout=%b\n";
static const char *ng1 = "/home/rcetin/workspace/ISE_workspace/ha/ha_tb.v";
static const char *ng2 = "";
static const char *ng3 = " << Starting the Simulation >>";
static int ng4[] = {0, 0};
static int ng5[] = {1, 0};

void Monitor_54_2(char *);
void Monitor_54_2(char *);


static void Monitor_54_2_Func(char *t0)
{
    char t2[8];
    double t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    t1 = xsi_vlog_realtime(1000.0000000000000, 1000.0000000000000);
    *((double *)t2) = t1;
    t3 = (t0 + 1608);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t0 + 1768);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t0 + 1048U);
    t10 = *((char **)t9);
    t9 = (t0 + 1208U);
    t11 = *((char **)t9);
    xsi_vlogfile_write(1, 0, 3, ng0, 6, t0, (char)114, t2, 64, (char)118, t5, 1, (char)118, t8, 1, (char)118, t10, 1, (char)118, t11, 1);

LAB1:    return;
}

static void Initial_43_0(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 2680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng1);

LAB4:    xsi_set_current_line(44, ng1);
    t2 = xsi_vlog_time(t3, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng2, 2, t0, (char)118, t3, 64);
    xsi_vlogfile_write(1, 0, 0, ng3, 1, t0);
    xsi_set_current_line(45, ng1);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(45, ng1);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(47, ng1);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 200000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(47, ng1);
    t4 = ((char*)((ng4)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(47, ng1);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(48, ng1);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 200000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(48, ng1);
    t4 = ((char*)((ng5)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(48, ng1);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(49, ng1);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 200000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(49, ng1);
    t4 = ((char*)((ng5)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(49, ng1);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    goto LAB1;

}

static void Initial_53_1(char *t0)
{

LAB0:    xsi_set_current_line(54, ng1);
    Monitor_54_2(t0);

LAB1:    return;
}

void Monitor_54_2(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 2984);
    t2 = (t0 + 3496);
    xsi_vlogfile_monitor((void *)Monitor_54_2_Func, t1, t2);

LAB1:    return;
}


extern void work_m_14918351841301240890_1832384145_init()
{
	static char *pe[] = {(void *)Initial_43_0,(void *)Initial_53_1,(void *)Monitor_54_2};
	xsi_register_didat("work_m_14918351841301240890_1832384145", "isim/ha_tb_isim_beh.exe.sim/work/m_14918351841301240890_1832384145.didat");
	xsi_register_executes(pe);
}
