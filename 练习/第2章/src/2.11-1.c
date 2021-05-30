/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-05-30 12:46:08
 * @LastEditors: Elon C
 * @LastEditTime: 2021-05-30 15:54:28
 * @FilePath: \CS-APP\练习\第2章\src\2.11-1.c
 */
#include <stdio.h>
#include "ch2.h"

int main(void)
{
    int a = 5, b = 3;
    printf("&a = %d,&b = %d\n", &a, &b);

    printf("a = %d,b = %d\n", a, b);

    inplace_swap(&a, &b);

    printf("&a = %d,&b = %d\n", &a, &b);

    printf("a = %d,b = %d\n", a, b);
    int x[] = {1, 2, 3, 4, 5};
    print_array(x, 5);
    reverse_array(x, 5);
    print_array(x, 5);
}
