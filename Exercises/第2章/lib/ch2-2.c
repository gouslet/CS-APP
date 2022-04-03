/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-05-30 14:40:30
 * @LastEditors: Elon C
 * @LastEditTime: 2021-05-30 15:05:09
 * @FilePath: \CS-APP\练习\第2章\lib\ch2-2.c
 */
#include <stdio.h>

void inplace_swap(int *x, int *y)
{
    *y = *x ^ *y;
    *x = *x ^ *y;
    *y = *x ^ *y;
}

void reverse_array(int a[], int cnt)
{
    int first, last;
    for (first = 0, last = cnt - 1; first < last; first++, last--)
    {
        inplace_swap(&a[first], &a[last]);
    }
}

void print_array(int a[], int cnt)
{
    for (int i = 0; i < cnt; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n");
}