/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-05-29 21:02:25
 * @LastEditors: Elon C
 * @LastEditTime: 2021-05-29 21:46:06
 * @FilePath: \CS-APP\test\test_address.c
 */
#include <stdio.h>

int main(void)
{
    void func(int *);
    int a = 1;
    unsigned char *p = (unsigned char *)&a;
    // printf("%x\n", *(p + 1));
    // int *a = 0xcfffff;
    // *a = 10;
    printf("%d\n", &a);
    printf("%x\n", &a);
    printf("%p\n", &a);
    printf("%d\n", p);
    printf("%x\n", p);
    int len = 16;
    for (int i = 0; i < len; i++)
    {
        printf("%.2x ", p[i]);
    }
    // printf("*a=%x\n", *a);
    // printf("&a=%x\n", &a);
    // int b = 2;
    // // func(a);
    // // func(&b);
    // printf("b=%x\n", b);
    // printf("&b=%x\n", &b);
}

void func(int *x)
{
    printf("x=%x\n", x);
    printf("&x=%x\n", &x);
}