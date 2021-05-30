/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-05-29 16:13:23
 * @LastEditors: Elon C
 * @LastEditTime: 2021-05-29 19:59:28
 * @FilePath: \CS-APP\示例\Chapter-2\2.1.3\show_bytes.c
 */
#include "show_bytes.h"

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

void show_int(int x)
{
    show_bytes((byte_pointer)&x, sizeof(int));
}

void show_float(float x)
{
    show_bytes((byte_pointer)&x, sizeof(float));
}

void show_pointer(void *x)
{
    show_bytes((byte_pointer)&x, sizeof(void *));
}