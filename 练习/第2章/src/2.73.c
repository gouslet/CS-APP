/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-09 21:34:16
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-11 18:50:00
 * @FilePath: \CS-APP\练习\第2章\src\2.73.c
 */
/* Addition that saturates to TMin or TMax */

#include "stdio.h"
#include "stdlib.h"

const int LEN = 32;

int saturating_add(int x, int y);
char *bin_string(int);
void test_num(int, int);

int main(void)
{
    int x1 = 4, y1 = 20;
    printf("1: ");
    test_num(x1, y1);
    int x2 = 0x12345678, y2 = 0x7654321;
    printf("2: ");
    test_num(x2, y2);
    int x3 = 12345678, y3 = 87654321;
    printf("3: ");
    test_num(x3, y3);
    int x4 = 1 << 31, y4 = -7;
    printf("4: ");
    test_num(x4, y4);
}

void test_num(int x, int y)
{
    int lmx = saturating_add(x, y);
    printf("x = %#x y = %#x saturating_add(%d,%d) = %#x\n", x, y, x, y, lmx);
}

int saturating_add(int x, int y)
{
    int sum = x + y;
    int neg_over = (INT_MIN & x) && (INT_MIN & y) && !(sum & INT_MIN);
    int pos_over = !(INT_MIN & x) && !(INT_MIN & y) && (sum & INT_MIN);
    pos_over && (sum = INT_MAX) || neg_over && (sum = INT_MIN);
    return sum;
}