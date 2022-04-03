/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2020-12-13 21:17:13
 * @LastEditors: Elon C
 * @LastEditTime: 2020-12-13 23:22:00
 * @FilePath: \示例\内存越界引用与缓冲区溢出\echo.c
 */

/*p195 3.10.3 内存越界引用与缓冲区溢出*/
#include <stdio.h>
/*实现库函数gets()*/
char *gets(char *s)
{
    int c;
    char *dest = s;
    while (c = getchar() != '\n' && c != EOF)
    {
        *dest++ = c;
    }
    if (c == EOF && dest == s)
    {
        /*没有字符可读*/
        return NULL;
    }
    *dest++ = '\0'; /*终结字符串*/
    return s;
}

/*读取输入行并回显*/
void echo()
{
    char buf[8]; /*太小了*/
    gets(buf);
    puts(buf);
}