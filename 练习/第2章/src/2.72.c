/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-10 20:33:47
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-10 20:51:26
 * @FilePath: \CS-APP\练习\第2章\src\2.72.c
 */

#include "stdio.h"
#include "stdlib.h"
#include "string.h"

const int LEN = 32;

/* Copy integer into buffer if space is available */
void copy_int(int val, void *buf, int maxbytes);

int main(void)
{
    int x = 15;
    int y = 6;
    printf("%d\n", y);
    copy_int(x, &y, 2); // no enough spaces
    printf("%d\n", y);
    copy_int(x, &y, 4); // enough spaces
    printf("%d\n", y);
}

void copy_int(int val, void *buf, int maxbytes)
{
    int x = maxbytes - sizeof(val);
    if (x >= 0)
        memcpy(buf, (void *)&val, sizeof(val));
}