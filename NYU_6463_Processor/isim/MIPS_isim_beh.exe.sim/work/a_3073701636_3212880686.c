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
static const char *ng0 = "C:/Users/amrit/Documents/GitHub/ACHD_PROJECT/NYU_6463_Processor/dataMem.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3073701636_3212880686_p_0(char *t0)
{
    char t14[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:    xsi_set_current_line(62, ng0);

LAB3:    t2 = (t0 + 3472);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1992U);
    t9 = *((char **)t2);
    t2 = (t0 + 1512U);
    t10 = *((char **)t2);
    t11 = (31 - 7);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t2 = (t10 + t13);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 7;
    t16 = (t15 + 4U);
    *((int *)t16) = 0;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t17 = (0 - 7);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t19 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t14);
    t20 = (t19 - 0);
    t18 = (t20 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t19);
    t21 = (32U * t18);
    t22 = (0 + t21);
    t16 = (t9 + t22);
    t23 = (t0 + 3552);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t16, 32U);
    xsi_driver_first_trans_fast_port(t23);
    goto LAB3;

LAB5:    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB7;

LAB8:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1832U);
    t9 = *((char **)t2);
    t2 = (t0 + 1512U);
    t10 = *((char **)t2);
    t11 = (31 - 7);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t2 = (t10 + t13);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 7;
    t16 = (t15 + 4U);
    *((int *)t16) = 0;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t17 = (0 - 7);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t19 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t14);
    t20 = (t19 - 0);
    t18 = (t20 * 1);
    t21 = (32U * t18);
    t22 = (0U + t21);
    t16 = (t0 + 3616);
    t23 = (t16 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t9, 32U);
    xsi_driver_first_trans_delta(t16, t22, 32U, 0LL);
    goto LAB3;

LAB10:    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB12;

}


extern void work_a_3073701636_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3073701636_3212880686_p_0};
	xsi_register_didat("work_a_3073701636_3212880686", "isim/MIPS_isim_beh.exe.sim/work/a_3073701636_3212880686.didat");
	xsi_register_executes(pe);
}
