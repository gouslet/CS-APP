/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-05-29 18:56:15
 * @LastEditors: Elon C
 * @LastEditTime: 2021-05-29 18:59:08
 * @FilePath: \CS-APP\示例\Chapter-2\2.1.3\show_bytes.h
 */
#include <stdio.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, size_t len);
void show_int(int x);
void show_float(float x);
void show_pointer(void *x);
