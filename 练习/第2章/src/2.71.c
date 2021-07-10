/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-10 20:07:39
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-10 20:24:07
 * @FilePath: \CS-APP\练习\第2章\src\2.71.c
 */
#include "stdio.h"
#include "stdlib.h"

const int LEN = 32;

/* Declaration of data type where 4 bytes are packed into an unsigned */
typedef unsigned packed_t;
/* Extract byte from word. Return as signed integer */
int xbyte(packed_t, int);

char *bool_string(int);
char *bin_string(int);
void test_num(packed_t, int);

int main(void)
{
    int n0 = 0, n1 = 1, n2 = 2, n3 = 3;
    printf("1: ");
    packed_t x1 = 0x12345678;
    test_num(x1, n0);
    printf("2: ");
    test_num(x1, n1);
    printf("3: ");
    test_num(x1, n2);
    printf("4: ");
    test_num(x1, n3);
    printf("5: ");
    packed_t x2 = 0xABCDEF12;
    test_num(x2, n0);
    printf("6: ");
    test_num(x2, n1);
    printf("7: ");
    test_num(x2, n2);
    printf("8: ");
    test_num(x2, n3);
}

void test_num(packed_t x, int n)
{
    int lmx = xbyte(x, n);
    printf("x = %#x x[%d]=%#x\n", x, n, lmx);
}

int xbyte(packed_t word, int bytenum)
{
    return ((int)word << ((3 - bytenum) << 3)) >> 24;
}