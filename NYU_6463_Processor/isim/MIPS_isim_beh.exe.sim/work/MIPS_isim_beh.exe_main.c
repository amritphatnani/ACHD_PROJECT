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

char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_2592010699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    work_a_1218917173_3212880686_init();
    work_a_3641411212_3212880686_init();
    work_a_3430011751_3212880686_init();
    work_a_1385297755_3212880686_init();
    work_a_1153420228_3212880686_init();
    work_a_2077859724_3212880686_init();
    work_a_3074600332_3212880686_init();
    work_a_2096391741_3212880686_init();
    work_a_3789475636_1516540902_init();
    work_a_0089524818_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_3073701636_3212880686_init();
    work_a_3720823106_3212880686_init();
    work_a_2601820781_3212880686_init();
    work_a_2551355666_3212880686_init();
    work_a_2772218284_3212880686_init();
    work_a_3877310806_3212880686_init();


    xsi_register_tops("work_a_3877310806_3212880686");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
