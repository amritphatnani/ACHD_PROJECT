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
static const char *ng0 = "C:/Users/amrit/Documents/GitHub/ACHD_PROJECT/final_project/dataMem.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3073701636_3212880686_p_0(char *t0)
{
    char t20[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    int t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3472);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(79, ng0);
    t4 = (t0 + 1192U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB16;

LAB17:    t1 = (unsigned char)0;

LAB18:    if (t1 != 0)
        goto LAB14;

LAB15:    xsi_set_current_line(83, ng0);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(80, ng0);
    t4 = (t0 + 1992U);
    t15 = *((char **)t4);
    t4 = (t0 + 1512U);
    t16 = *((char **)t4);
    t17 = (31 - 7);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t4 = (t16 + t19);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 7;
    t22 = (t21 + 4U);
    *((int *)t22) = 0;
    t22 = (t21 + 8U);
    *((int *)t22) = -1;
    t23 = (0 - 7);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t25 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t4, t20);
    t26 = (t25 - 0);
    t24 = (t26 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t25);
    t27 = (32U * t24);
    t28 = (0 + t27);
    t22 = (t15 + t28);
    t29 = (t0 + 3552);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t22, 32U);
    xsi_driver_first_trans_fast_port(t29);
    goto LAB9;

LAB11:    t4 = (t0 + 1352U);
    t12 = *((char **)t4);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    t8 = t14;
    goto LAB13;

LAB14:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1832U);
    t9 = *((char **)t2);
    t2 = (t0 + 1512U);
    t12 = *((char **)t2);
    t17 = (31 - 7);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t2 = (t12 + t19);
    t15 = (t20 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 7;
    t16 = (t15 + 4U);
    *((int *)t16) = 0;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t23 = (0 - 7);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t24;
    t25 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t20);
    t26 = (t25 - 0);
    t24 = (t26 * 1);
    t27 = (32U * t24);
    t28 = (0U + t27);
    t16 = (t0 + 3616);
    t21 = (t16 + 56U);
    t22 = *((char **)t21);
    t29 = (t22 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t9, 32U);
    xsi_driver_first_trans_delta(t16, t28, 32U, 0LL);
    goto LAB9;

LAB16:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB18;

}


extern void work_a_3073701636_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3073701636_3212880686_p_0};
	xsi_register_didat("work_a_3073701636_3212880686", "isim/MIPS_isim_beh.exe.sim/work/a_3073701636_3212880686.didat");
	xsi_register_executes(pe);
}
