/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-09 21:54:30
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-09 22:00:28
 * @FilePath: \CS-APP\练习\第2章\src\2.67.c
 */
#include "stdio.h"

/* The following code runs properly on some machines where size of int is at least 32*/
int int_size_is_32()
{
    /* Set most significant bit (msb) of 32-bit machine */
    int set_msb = 1 << 31;
    /* Shift past msb of 32-bit word */
    int beyond_msb = 1 << 15;
    beyond_msb <<= 15;
    beyond_msb <<= 2;
    /* set_msb is nonzero when word size>= 32 beyond_msb is zero when word size<= 32 */
    return set_msb && !beyond_msb;
}

char *bool_string(int x)
{
    return x ? "is" : "isn't";
}

int main(void)
{
    printf("int size %s 32 on this machine!\n", bool_string(int_size_is_32()));
}
