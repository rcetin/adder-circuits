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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-15);
    work_m_03314914284716067422_2704592874_init();
    work_m_08770501921713816271_0356895397_init();
    work_m_00596427904942654492_3771426190_init();
    work_m_00236964687325331411_3552387463_init();
    work_m_12015699311291872076_2047558585_init();
    work_m_15010709470110057755_4244135440_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_15010709470110057755_4244135440");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
