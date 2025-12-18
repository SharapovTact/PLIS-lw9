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
static const char *ng0 = "D:/Study/PLIS/PLIS-lw9/Game2/Decounter.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_1776561527_3212880686_p_0(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1312U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t1 = (t0 + 4920U);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 4888U);
    t9 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t5, t6, t1, t8, t7);
    t10 = (t0 + 3232);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 4952);
    t8 = (t0 + 3232);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB6;

LAB8:    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t15 = *((unsigned char *)t6);
    t16 = (t15 == (unsigned char)3);
    t3 = t16;
    goto LAB10;

}


extern void work_a_1776561527_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1776561527_3212880686_p_0};
	xsi_register_didat("work_a_1776561527_3212880686", "isim/Scheme_Scheme_sch_tb_isim_beh.exe.sim/work/a_1776561527_3212880686.didat");
	xsi_register_executes(pe);
}
