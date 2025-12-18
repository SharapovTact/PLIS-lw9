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
static const char *ng0 = "D:/Study/PLIS/PLIS-lw8/SevenSegsLibrary/Digit_decoder.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);


static void work_a_3720026273_3212880686_p_0(char *t0)
{
    char t14[16];
    char t17[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t15;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4378);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB8:    t5 = (t0 + 4380);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB9:    t8 = (t0 + 4382);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB10:    t11 = (t0 + 4384);
    t13 = xsi_mem_cmp(t11, t2, 2U);
    if (t13 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 4402);
    t3 = (t17 + 0U);
    t5 = (t3 + 0U);
    *((int *)t5) = 0;
    t5 = (t3 + 4U);
    *((int *)t5) = 3;
    t5 = (t3 + 8U);
    *((int *)t5) = 1;
    t4 = (3 - 0);
    t21 = (t4 * 1);
    t21 = (t21 + 1);
    t5 = (t3 + 12U);
    *((unsigned int *)t5) = t21;
    t5 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t14, t1, t17);
    t6 = (t14 + 12U);
    t21 = *((unsigned int *)t6);
    t23 = (1U * t21);
    t24 = (4U != t23);
    if (t24 == 1)
        goto LAB21;

LAB22:    t8 = (t0 + 2752);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t5, 4U);
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t1 = (t0 + 2672);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(43, ng0);
    t15 = (t0 + 4386);
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 3;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t20 = (3 - 0);
    t21 = (t20 * 1);
    t21 = (t21 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t21;
    t19 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t14, t15, t17);
    t22 = (t14 + 12U);
    t21 = *((unsigned int *)t22);
    t23 = (1U * t21);
    t24 = (4U != t23);
    if (t24 == 1)
        goto LAB13;

LAB14:    t25 = (t0 + 2752);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t19, 4U);
    xsi_driver_first_trans_fast_port(t25);
    goto LAB2;

LAB4:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4390);
    t3 = (t17 + 0U);
    t5 = (t3 + 0U);
    *((int *)t5) = 0;
    t5 = (t3 + 4U);
    *((int *)t5) = 3;
    t5 = (t3 + 8U);
    *((int *)t5) = 1;
    t4 = (3 - 0);
    t21 = (t4 * 1);
    t21 = (t21 + 1);
    t5 = (t3 + 12U);
    *((unsigned int *)t5) = t21;
    t5 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t14, t1, t17);
    t6 = (t14 + 12U);
    t21 = *((unsigned int *)t6);
    t23 = (1U * t21);
    t24 = (4U != t23);
    if (t24 == 1)
        goto LAB15;

LAB16:    t8 = (t0 + 2752);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t5, 4U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB5:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 4394);
    t3 = (t17 + 0U);
    t5 = (t3 + 0U);
    *((int *)t5) = 0;
    t5 = (t3 + 4U);
    *((int *)t5) = 3;
    t5 = (t3 + 8U);
    *((int *)t5) = 1;
    t4 = (3 - 0);
    t21 = (t4 * 1);
    t21 = (t21 + 1);
    t5 = (t3 + 12U);
    *((unsigned int *)t5) = t21;
    t5 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t14, t1, t17);
    t6 = (t14 + 12U);
    t21 = *((unsigned int *)t6);
    t23 = (1U * t21);
    t24 = (4U != t23);
    if (t24 == 1)
        goto LAB17;

LAB18:    t8 = (t0 + 2752);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t5, 4U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB6:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 4398);
    t3 = (t17 + 0U);
    t5 = (t3 + 0U);
    *((int *)t5) = 0;
    t5 = (t3 + 4U);
    *((int *)t5) = 3;
    t5 = (t3 + 8U);
    *((int *)t5) = 1;
    t4 = (3 - 0);
    t21 = (t4 * 1);
    t21 = (t21 + 1);
    t5 = (t3 + 12U);
    *((unsigned int *)t5) = t21;
    t5 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t14, t1, t17);
    t6 = (t14 + 12U);
    t21 = *((unsigned int *)t6);
    t23 = (1U * t21);
    t24 = (4U != t23);
    if (t24 == 1)
        goto LAB19;

LAB20:    t8 = (t0 + 2752);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t5, 4U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB12:;
LAB13:    xsi_size_not_matching(4U, t23, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(4U, t23, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(4U, t23, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(4U, t23, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(4U, t23, 0);
    goto LAB22;

}


extern void work_a_3720026273_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3720026273_3212880686_p_0};
	xsi_register_didat("work_a_3720026273_3212880686", "isim/Scheme_Scheme_sch_tb_isim_beh.exe.sim/work/a_3720026273_3212880686.didat");
	xsi_register_executes(pe);
}
