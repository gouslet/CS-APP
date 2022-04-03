/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2020-12-13 23:20:32
 * @LastEditors: Elon C
 * @LastEditTime: 2020-12-13 23:21:06
 * @FilePath: \示例\机器级代码\mstore.c
 */
/*p114 3.2.2 代码示例*/
long mult2(long, long);

void multstore(long x, long y, long *dest)
{
    long t = mult2(x, y);
    *dest = t;
}