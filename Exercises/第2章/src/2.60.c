/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-06-29 21:58:08
 * @LastEditors: Elon C
 * @LastEditTime: 2021-06-29 22:15:25
 * @FilePath: \CS-APP\练习\第2章\src\2.60.c
 */
#include <stdio.h>

unsigned replace_byte(unsigned x, int i, unsigned char b);

int main(void)
{
    printf("replace_byte(0x12345678, 2, 0xAB) --> %#02X\n", replace_byte(0x12345678, 2, 0xAB));
    printf("replace_byte(0x12345678, 0, 0xAB) --> %#02X\n", replace_byte(0x12345678, 0, 0xAB));
}

unsigned replace_byte(unsigned x, int i, unsigned char b)
{
    return ~(0xFF << 8 * i) & x | b << 8 * i;
}
