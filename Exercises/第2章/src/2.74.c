/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-09 18:10:40
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-11 19:04:43
 * @FilePath: \CS-APP\练习\第2章\src\2.74.c
 */
/* Determine whether arguments can be subtracted without overflow */

#include "stdio.h"
#include "stdlib.h"

const int LEN = 32;

int tsub_ok(int x, int y);
char *bool_string(int);
char *bin_string(unsigned);
void test_num(int, int);

int main(void)
{
    printf("1: ");
    int x1 = 1, y1 = 2;
    test_num(x1, y1);
    printf("2: ");
    int x2 = 1 << 31, y2 = 1;
    test_num(x2, y2);
}

void test_num(int x, int y)
{
    printf("x = %d,y = %d tsub_ok(x) = %s\n", x, y, bool_string(tsub_ok(x, y)));
}

int tsub_ok(int x, int y)
{
    int n_y = ~y + 1;
    int sum = x + n_y;
    int pos_over = !(INT_MIN & x) && !(INT_MIN & n_y) && (INT_MIN & sum);
    int neg_over = (INT_MIN & x) && (INT_MIN & n_y) && !(INT_MIN & sum);
    return !(pos_over || neg_over);
}

char *bool_string(int bool)
{
    return bool ? "yes" : "no";
}
