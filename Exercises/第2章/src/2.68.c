/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-09 21:34:16
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-10 19:48:40
 * @FilePath: \CS-APP\练习\第2章\src\2.68.c
 */
/*
* Mask with least signficant n bits set to 1
* Examples: n = 6 --> 0x3F, n = 17 --> s0x1FFFF
* Assume 1 <= n <= w
*/
#include "stdio.h"
#include "stdlib.h"

const int LEN = 32;

int lower_one_mask(int);
char *bool_string(int);
char *bin_string(int);
void test_num(int);

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

void test_num(int n)
{

    int lmx = lower_one_mask(n);
    char *x_str = bin_string(lmx);
    printf("n = %d lower_one_mask(n) = %d = 0b%s\n", n, lmx, bin_string(lmx));
    free(x_str);
}

char *bin_string(int x)
{
    char *b = (char *)malloc(LEN);
    itoa(x, b, 2);
    return b;
}

int lower_one_mask(int n)
{
    return (1 << n) - 1;
}