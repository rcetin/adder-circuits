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
    work_m_08027986558397143990_3752065331_init();
    work_m_15010709470110057755_2009735336_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_15010709470110057755_2009735336");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
