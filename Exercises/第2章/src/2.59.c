/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-06-29 21:38:07
 * @LastEditors: Elon C
 * @LastEditTime: 2021-06-29 21:54:48
 * @FilePath: \CS-APP\练习\第2章\src\2.59.c
 */

#include <stdio.h>
#include "show_bytes.h"

int main(void)
{
    int fun1(int, int);
    int x = 0x89ABCDEF, y = 0x76543210;
    printf("x = %d bytes:", x);
    show_bytes((byte_pointer)&x, sizeof(int));
    printf("y = %d bytes:", y);
    show_bytes((byte_pointer)&y, sizeof(int));
    int c = fun1(x, y);
    printf("we get %d\n", c);
    show_bytes((byte_pointer)&c, sizeof(int));
}

int fun1(int x, int y)
{
    // return x & 0xFF;
    // return y & 0xFFFFFF00;
    return x & 0xFF | y & 0xFFFFFF00;
}