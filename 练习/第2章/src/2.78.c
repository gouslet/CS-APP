/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-11 21:08:11
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-11 21:15:23
 * @FilePath: \CS-APP\练习\第2章\src\2.78.c
 */
#include "stdio.h"
#include "stdlib.h"

/* Divide by power of 2. Assume O <= k < w-1 */
int divide_power2(int x, int k);
void test(int x, int k);

int main(void)
{
    test(1, 0);
    test(1, 2);
    test(2, 1);
    test(-2, 1);
    test(-9, 1);
}

void test(int x, int k)
{
    printf("divide_power2(%d,%d) = %d\n", x, k, divide_power2(x, k));
}

int divide_power2(int x, int k)
{
    int sign = INT_MIN & x;
    sign && (x += (1 << k) - 1);
    return x >> k;
}
