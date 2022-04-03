/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-09 21:34:16
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-10 18:44:43
 * @FilePath: \CS-APP\练习\第2章\src\2.66 copy.c
 */
/*
* Generate mask indicating leftmost 1 in x. Assume w=32.
* For example, 0xFF00 -> 0x8000, and 0x6600 --> 0x4000.
* If x = 0, then return 0.
*/
#include "stdio.h"
#include "stdlib.h"

const int LEN = 32;

int leftmost_one(unsigned);
char *bool_string(int);
char *bin_string(unsigned);
void test_num(unsigned);

int main(void)
{
    printf("1: ");
    unsigned x1 = 1;
    test_num(x1);
    printf("2: ");
    unsigned x2 = 2;
    test_num(x2);
    printf("3: ");
    unsigned x3 = 3;
    test_num(x3);
    printf("4: ");
    unsigned x4 = 4;
    test_num(x4);
    printf("5: ");
    unsigned x5 = 5;
    test_num(x5);
    printf("6: ");
    unsigned x6 = 0xA;
    test_num(x6);
    printf("7: ");
    unsigned x7 = 0x80000000;
    test_num(x7);
    printf("8: ");
    unsigned x8 = 0x40000000;
    test_num(x8);
}

void test_num(unsigned x)
{
    char *x_str = bin_string(x);
    int lmx = leftmost_one(x);
    printf("x = %u = 0b%s leftmost_one(x) = %d = 0b%s\n", x, x_str, lmx, bin_string(lmx));
    free(x_str);
}

char *bin_string(unsigned x)
{
    char *b = (char *)malloc(LEN);
    itoa(x, b, 2);
    return b;
}

int leftmost_one(unsigned x)
{
    x |= x >> 1;
    x |= x >> 2;
    x |= x >> 4;
    x |= x >> 8;
    x |= x >> 16;
    return (x >> 1) + 1;
}