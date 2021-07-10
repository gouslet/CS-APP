/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-09 18:10:40
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-09 20:20:09
 * @FilePath: \CS-APP\练习\第2章\src\2.64.c
 */
/* Return 1 when any odd bit of x equals 1; 0 otherwise. Assume w=32 */
#include "stdio.h"
#include "stdlib.h"

const int LEN = 32;

int any_odd_one(unsigned);
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
    printf("x = %u = 0b%s any_odd_one(x) = %s\n", x, x_str, bool_string(any_odd_one(x)));
    free(x_str);
}

int any_odd_one(unsigned x)
{
    return x & 0xAAAAAAAA;
}

char *bool_string(int bool)
{
    return bool ? "yes" : "no";
}

char *bin_string(unsigned x)
{
    char *b = (char *)malloc(LEN);
    itoa(x, b, 2);
    return b;
}
