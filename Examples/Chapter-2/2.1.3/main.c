/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-05-29 18:48:11
 * @LastEditors: Elon C
 * @LastEditTime: 2021-05-29 18:58:22
 * @FilePath: \CS-APP\示例\Chapter-2\2.1.3\main.c
 */
#include "show_bytes.h"

void test_show_bytes(int val)
{
    int ival = val;
    float fval = (float)ival;
    int *pval = &ival;
    show_int(ival);
    show_float(fval);
    show_pointer(pval);
}

int main(void)
{
    int a = 12;
    test_show_bytes(a);
}