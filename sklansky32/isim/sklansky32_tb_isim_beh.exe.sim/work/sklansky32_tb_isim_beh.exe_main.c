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
    work_m_15816888473378002441_0356895397_init();
    work_m_07849241633085505375_3771426190_init();
    work_m_05235075194389907525_3552387463_init();
    work_m_09390996794040946428_2044240086_init();
    work_m_15010709470110057755_1568111783_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_15010709470110057755_1568111783");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
