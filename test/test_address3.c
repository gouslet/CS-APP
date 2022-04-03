/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-05-29 22:14:05
 * @LastEditors: Elon C
 * @LastEditTime: 2021-05-29 22:18:16
 * @FilePath: \CS-APP\test\test_address3.c
 */
#include <stdio.h>

int main()
{
    int a = 0x00359141;
    int b = 0x4A564504;
    char *s;
    itoa(a, s, 2);
    printf("a=%x\n", a);
    printf("a=%x\n", a);
    printf("a=%s\n", s);
}