/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-09 21:34:16
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-10 19:54:17
 * @FilePath: \CS-APP\练习\第2章\src\2.70.c
 */
/*
* Return 1 when x can be represented as an n-bit, 2's-complement number; 0 otherwise
* Assume 1 <= n <= w
*/
#include "stdio.h"
#include "stdlib.h"

const int LEN = 32;

int fits_bits(int, int);
char *bool_string(int);
char *bin_string(int);
void test_num(int, int);

int main(void)
{
    int n1 = 4, n2 = 20;
    printf("1: ");
    int x1 = 0x12345678;
    test_num(x1, n1);
    printf("2: ");
    test_num(x1, n2);
    printf("3: ");
    int x3 = 1;
    test_num(x3, n1);
    printf("4: ");
    test_num(x3, n2);
    printf("5: ");
    int x5 = 5;
    test_num(x5, n1);
    printf("6: ");
    int x6 = 0xA;
    test_num(x6, n1);
    printf("7: ");
    int x7 = 0x80000000;
    test_num(x7, n1);
    printf("8: ");
    int x8 = 0xAB000000;
    test_num(x8, n1);
}

void test_num(int x, int n)
{
    int lmx = fits_bits(x, n);
    printf("x = %#x can%s be represented as a %d-bit, 2's-complement number\n", x, lmx ? "" : " not", n);
}

int fits_bits(int x, int n)
{
    int sign = x >> n - 1;
    return !~sign | !sign;
}