/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2020-12-14 00:16:02
 * @LastEditors: Elon C
 * @LastEditTime: 2020-12-14 00:20:40
 * @FilePath: \示例\机器级代码\main.c
 */
/*p114 3.2.2 代码示例*/

#include <stdio.h>
void multstore(long, long, long *);
int main()
{
    long d;
    multstore(2, 3, &d);
    printf("2 * 3 --> %1d\n", d);
    return 0;
}
long mult2(long a, long b)
{
    long s = a * b;
    return s;
}