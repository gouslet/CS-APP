/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-11 20:50:21
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-11 21:04:38
 * @FilePath: \CS-APP\练习\第2章\src\2.77.c
 */
#include "stdio.h"

int multiply(int k, int x);
void test(int, int);

int main(void)
{
    int k1 = 17, x1 = 9;
    test(k1, x1);
    int k2 = -7, x2 = -9;
    test(k2, x2);
    int k3 = 60, x3 = 4;
    test(k3, x3);
    int k4 = -112, x4 = -1;
    test(k4, x4);
}

void test(int k, int x)
{
    printf("%d * %d = %d\n", k, x, multiply(k, x));
}

int multiply(int k, int x)
{
    int res;
    switch (k)
    {
    case 17:
        res = (x << 4) + x;
        break;
    case -7:
        res = x - (x << 3);
        break;
    case 60:
        res = (x << 6) - (x << 2);
        break;
    case -112:
        res = (x << 4) - (x << 7);
        break;
    }
    return res;
}