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
    work_m_02254120138555082921_4217992742_init();
    work_m_17922498300212611205_0199059056_init();
    work_m_16754887494291035038_4191813325_init();
    work_m_16162200467653761127_4112379692_init();
    work_m_07546849611514801958_2275200450_init();
    work_m_15010709470110057755_2452061918_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_15010709470110057755_2452061918");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
