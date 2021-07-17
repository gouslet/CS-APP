/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-16 17:56:55
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-16 18:36:22
 * @FilePath: \CS-APP\示例\Chapter-8\8.4\fork_1.c
 */
/*8-15 使用fork 创建一个新进程*/
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include "csapp.h"

int main(void)
{
    pid_t pid;
    int x = 1;

    pid = Fork();
    if (pid == 0)
    {
        /*Child*/
        printf("child: x=%d\n", ++x);
        exit(0);
    }

    //Parent
    printf("parent: x=%d", --x);
    exit(0);
}