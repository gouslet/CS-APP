/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-06-29 21:16:39
 * @LastEditors: Elon C
 * @LastEditTime: 2021-06-29 21:26:05
 * @FilePath: \CS-APP\练习\第2章\src\2.56.c
 */

#include "show_bytes.h"

int main(void)
{
    int a = 12;

    show_bytes((byte_pointer)&a, sizeof(int));
}

/** 
    * show_bytes 
    */
void show_bytes(byte_pointer start, size_t len)
{
    size_t i;
    for (i = 0; i < len; i++)
    {
        printf("%.2x", start[i]);
    }
    printf("\n");
}