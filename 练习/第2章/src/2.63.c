/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-08 21:00:34
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-08 21:29:13
 * @FilePath: \CS-APP\练习\第2章\src\2.63.c
 */
#include <stdio.h>

unsigned srl(unsigned x, int k)
{
    /* Perform shift arithmetically */
    unsigned xsra = (int)x >> k;
    int w = 8 * sizeof(int);
    return ((0x1 << (w - k)) - 1) & xsra;
}

int sra(int x, int k)
{
    /* Perform shift logically*/
    int xsrl = (unsigned)x >> k;
    int w = 8 * sizeof(int);
    int mask = (1 << k) - 1 << (w - k);
    int sig = (x & 1 << (w - 1));
    sig != 0 && (xsrl |= mask);
    return xsrl;
}

int main(void)
{
    unsigned a = 0xaB;
    printf("a = %u srl(a) = %u\n", a, srl(a, 2));
    int b = -5;
    printf("b = %d srl(b) = %d\n", b, sra(b, 2));
}