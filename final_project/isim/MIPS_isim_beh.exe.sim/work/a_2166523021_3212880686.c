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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/amrit/Documents/GitHub/ACHD_PROJECT/final_project/registerFile.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_2166523021_3212880686_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB8;

LAB9:
LAB3:    t1 = (t0 + 4272);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2792U);
    t5 = *((char **)t1);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t7 = (4 - 4);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t1 = (t6 + t9);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 4;
    t12 = (t11 + 4U);
    *((int *)t12) = 0;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t13 = (0 - 4);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t10);
    t16 = (t15 - 0);
    t14 = (t16 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t15);
    t17 = (32U * t14);
    t18 = (0 + t17);
    t12 = (t5 + t18);
    t19 = (t0 + 4352);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t12, 32U);
    xsi_driver_first_trans_fast_port(t19);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t7 = (4 - 4);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t1 = (t5 + t9);
    t6 = (t10 + 0U);
    t11 = (t6 + 0U);
    *((int *)t11) = 4;
    t11 = (t6 + 4U);
    *((int *)t11) = 0;
    t11 = (t6 + 8U);
    *((int *)t11) = -1;
    t13 = (0 - 4);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t11 = (t6 + 12U);
    *((unsigned int *)t11) = t14;
    t15 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t10);
    t16 = (t15 - 0);
    t14 = (t16 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t15);
    t17 = (32U * t14);
    t18 = (0 + t17);
    t11 = (t2 + t18);
    t12 = (t0 + 4416);
    t19 = (t12 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 32U);
    xsi_driver_first_trans_fast_port(t12);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 1352U);
    t6 = *((char **)t1);
    t7 = (4 - 4);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t1 = (t6 + t9);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 4;
    t12 = (t11 + 4U);
    *((int *)t12) = 0;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t13 = (0 - 4);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t10);
    t16 = (t15 - 0);
    t14 = (t16 * 1);
    t17 = (32U * t14);
    t18 = (0U + t17);
    t12 = (t0 + 4480);
    t19 = (t12 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t5, 32U);
    xsi_driver_first_trans_delta(t12, t18, 32U, 0LL);
    goto LAB6;

LAB8:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 8742);
    t6 = (t0 + 4352);
    t11 = (t6 + 56U);
    t12 = *((char **)t11);
    t19 = (t12 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 8774);
    t5 = (t0 + 4416);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    t12 = (t11 + 56U);
    t19 = *((char **)t12);
    memcpy(t19, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

}


extern void work_a_2166523021_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2166523021_3212880686_p_0};
	xsi_register_didat("work_a_2166523021_3212880686", "isim/MIPS_isim_beh.exe.sim/work/a_2166523021_3212880686.didat");
	xsi_register_executes(pe);
}
