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
static const char *ng0 = "C:/Users/amrit/Documents/GitHub/ACHD_PROJECT/NYU_6463_Processor/ALUCtrl.vhd";



static void work_a_0089524818_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    int t22;
    char *t23;
    char *t24;
    int t25;
    char *t26;
    char *t27;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3560);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 5940);
    t7 = xsi_mem_cmp(t1, t5, 4U);
    if (t7 == 1)
        goto LAB6;

LAB17:    t8 = (t0 + 5944);
    t10 = xsi_mem_cmp(t8, t5, 4U);
    if (t10 == 1)
        goto LAB7;

LAB18:    t11 = (t0 + 5948);
    t13 = xsi_mem_cmp(t11, t5, 4U);
    if (t13 == 1)
        goto LAB8;

LAB19:    t14 = (t0 + 5952);
    t16 = xsi_mem_cmp(t14, t5, 4U);
    if (t16 == 1)
        goto LAB9;

LAB20:    t17 = (t0 + 5956);
    t19 = xsi_mem_cmp(t17, t5, 4U);
    if (t19 == 1)
        goto LAB10;

LAB21:    t20 = (t0 + 5960);
    t22 = xsi_mem_cmp(t20, t5, 4U);
    if (t22 == 1)
        goto LAB11;

LAB22:    t23 = (t0 + 5964);
    t25 = xsi_mem_cmp(t23, t5, 4U);
    if (t25 == 1)
        goto LAB12;

LAB23:    t26 = (t0 + 5968);
    t28 = xsi_mem_cmp(t26, t5, 4U);
    if (t28 == 1)
        goto LAB13;

LAB24:    t29 = (t0 + 5972);
    t31 = xsi_mem_cmp(t29, t5, 4U);
    if (t31 == 1)
        goto LAB14;

LAB25:    t32 = (t0 + 5976);
    t34 = xsi_mem_cmp(t32, t5, 4U);
    if (t34 == 1)
        goto LAB15;

LAB26:
LAB16:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 3656);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t1);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(29, ng0);
    t35 = (t0 + 5980);
    t37 = (t0 + 3656);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    memcpy(t41, t35, 4U);
    xsi_driver_first_trans_fast(t37);
    goto LAB5;

LAB7:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 5984);
    t5 = (t0 + 3656);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB8:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 5988);
    t5 = (t0 + 3656);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB9:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 5992);
    t5 = (t0 + 3656);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB10:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 5996);
    t5 = (t0 + 3656);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB11:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 6000);
    t5 = (t0 + 3656);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB12:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 6004);
    t5 = (t0 + 3656);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB13:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 6008);
    t5 = (t0 + 3656);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB14:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 6012);
    t5 = (t0 + 3656);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB15:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6016);
    t7 = xsi_mem_cmp(t1, t2, 6U);
    if (t7 == 1)
        goto LAB29;

LAB35:    t6 = (t0 + 6022);
    t10 = xsi_mem_cmp(t6, t2, 6U);
    if (t10 == 1)
        goto LAB30;

LAB36:    t9 = (t0 + 6028);
    t13 = xsi_mem_cmp(t9, t2, 6U);
    if (t13 == 1)
        goto LAB31;

LAB37:    t12 = (t0 + 6034);
    t16 = xsi_mem_cmp(t12, t2, 6U);
    if (t16 == 1)
        goto LAB32;

LAB38:    t15 = (t0 + 6040);
    t19 = xsi_mem_cmp(t15, t2, 6U);
    if (t19 == 1)
        goto LAB33;

LAB39:
LAB34:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 6066);
    t5 = (t0 + 3656);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);

LAB28:    goto LAB5;

LAB27:;
LAB29:    xsi_set_current_line(40, ng0);
    t18 = (t0 + 6046);
    t21 = (t0 + 3656);
    t23 = (t21 + 56U);
    t24 = *((char **)t23);
    t26 = (t24 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t18, 4U);
    xsi_driver_first_trans_fast(t21);
    goto LAB28;

LAB30:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 6050);
    t5 = (t0 + 3656);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB28;

LAB31:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 6054);
    t5 = (t0 + 3656);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB28;

LAB32:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 6058);
    t5 = (t0 + 3656);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB28;

LAB33:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 6062);
    t5 = (t0 + 3656);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB28;

LAB40:;
}

static void work_a_0089524818_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 3720);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3576);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0089524818_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0089524818_3212880686_p_0,(void *)work_a_0089524818_3212880686_p_1};
	xsi_register_didat("work_a_0089524818_3212880686", "isim/MIPS_isim_beh.exe.sim/work/a_0089524818_3212880686.didat");
	xsi_register_executes(pe);
}
