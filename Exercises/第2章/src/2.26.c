/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-06-15 21:08:19
 * @LastEditors: Elon C
 * @LastEditTime: 2021-06-15 21:15:31
 * @FilePath: \CS-APP\练习\第2章\src\2.26.c
 */
#include <stdio.h>
#include <string.h>

int strlonger(char *s, char *t)
{
    return strlen(s) - strlen(t) > 0;
}

int main(int argc, char const *argv[])
{
    char *a = "s2fg5";
    char *b = "s2fg5s";
    char *c = "";
    printf("a > b:%d\n", strlonger(a, b));
    printf("a > c:%d\n", strlonger(a, c));
    return 0;
}
