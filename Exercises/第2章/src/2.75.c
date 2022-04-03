/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-11 19:13:37
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-11 19:56:43
 * @FilePath: \CS-APP\练习\第2章\src\2.75.c
 */
#include "stdio.h"
#include "stdlib.h"

unsigned unsigned_high_prod(unsigned x, unsigned y);
int signed_high_prod(int x, int y);

int main(void)
{
    int x1 = 7, y1 = 8;
    int z1 = signed_high_prod(x1, y1);
    int w1 = unsigned_high_prod(x1, y1);
    printf("x1 = %d,y1 = %d signed_high_prod(%d,%d) = %d = %#x unsigned_high_prod(%u,%u) = %u = %#x\n", x1, y1, x1, y1, z1, z1, x1, y1, w1, w1);
    int x2 = 1234567, y2 = 8765432;
    int z2 = signed_high_prod(x2, y2);
    int w2 = unsigned_high_prod(x2, y2);
    printf("x2 = %d,y2 = %d signed_high_prod(%d,%d) = %d = %#x unsigned_high_prod(%u,%u) = %u = %#x\n", x2, y2, x2, y2, z2, z2, x2, y2, w2, w2);
    int x3 = 1 << 31, y3 = 1 << 31 - 7;
    int z3 = signed_high_prod(x3, y3);
    int w3 = unsigned_high_prod(x3, y3);
    printf("x3 = %d,y3 = %d signed_high_prod(%d,%d) = %d = %#x unsigned_high_prod(%u,%u) = %u = %#x\n", x3, y3, x3, y3, z3, z3, x3, y3, w3, w3);
    int x4 = 1 << 30, y4 = 1 << 2;
    int z4 = signed_high_prod(x4, y4);
    int w4 = unsigned_high_prod(x4, y4);
    printf("x4 = %d,y4 = %d signed_high_prod(%d,%d) = %d = %#x unsigned_high_prod(%u,%u) = %u = %#x\n", x4, y4, x4, y4, z4, z4, x4, y4, w4, w4);
}
unsigned unsigned_high_prod(unsigned x, unsigned y)
{
    return (unsigned)((INT_MIN & x) * (int)y + (int)x * (INT_MIN & y) + signed_high_prod(x, y));
}

int signed_high_prod(int x, int y)
{
    long long a = (long long)x;
    long long b = (long long)y;
    // printf("x = %d y = %d a = %d b = %d\n", x, y, a, b);
    return (int)(a * b >> 32);
}