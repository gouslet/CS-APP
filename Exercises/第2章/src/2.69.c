/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-09 21:34:16
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-10 19:15:02
 * @FilePath: \CS-APP\练习\第2章\src\2.69.c
 */
/*
* Generate mask indicating leftmost 1 in x. Assume w=32.
* For example, 0xFF00 -> 0x8000, and 0x6600 --> 0x4000.
* If x = 0, then return 0.
*/
#include "stdio.h"
#include "stdlib.h"

const int LEN = 32;

unsigned rotate_left(unsigned, int);
char *bool_string(int);
char *bin_string(int);
void test_num(unsigned, int);

int main(void)
{
    printf("rotating left shift unsigned int with n steps\n");
    int n1 = 4, n2 = 20;
    printf("1: ");
    unsigned x1 = 0x12345678;
    test_num(x1, n1);
    printf("2: ");
    test_num(x1, n2);
    printf("3: ");
    unsigned x3 = 1;
    test_num(x3, n1);
    printf("4: ");
    test_num(x3, n2);
    printf("5: ");
    unsigned x5 = 5;
    test_num(x5, n1);
    printf("6: ");
    unsigned x6 = 0xA;
    test_num(x6, n1);
    printf("7: ");
    unsigned x7 = 0x80000000;
    test_num(x7, n1);
    printf("8: ");
    unsigned x8 = 0x40000000;
    test_num(x8, n1);
}

void test_num(unsigned x, int n)
{
    unsigned lmx = rotate_left(x, n);
    printf("x = %#x rotate_left(x,%d) = %#x\n", x, n, lmx);
}

unsigned rotate_left(unsigned x, int n)
{
    int w = 8 * sizeof(unsigned);
    unsigned hx = ~((1 << w - n) - 1) & x;
    unsigned lx = x - hx;
    hx >>= w - n;
    lx <<= n;
    return hx + lx;
}