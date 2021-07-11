/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-11 21:08:11
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-11 21:24:48
 * @FilePath: \CS-APP\练习\第2章\src\2.79.c
 */
#include "stdio.h"
#include "stdlib.h"

/* Multiply by 3 and divide by 4. */
int mut3div4(int x);
void test(int x);

int main(void)
{
    test(1);
    test(2);
    test(3);
    test(-2);
    test(-9);
}

void test(int x)
{
    printf("mut3div4(%d) = %d\n", x, mut3div4(x));
}

int mut3div4(int x)
{
    x = (x << 1) + x;
    int sign = INT_MIN & x;
    sign && (x += (1 << x) - 1);
    return x >> 2;
}