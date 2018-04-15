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
    work_m_18232238636177425735_4122600708_init();
    work_m_10128599301127120691_3190593924_init();
    work_m_15549130080379091049_4217992742_init();
    work_m_16754887494291035038_4191813325_init();
    work_m_13042088060475544795_3711881295_init();
    work_m_02656278185527029383_1606541579_init();
    work_m_15010709470110057755_1468022864_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_15010709470110057755_1468022864");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
