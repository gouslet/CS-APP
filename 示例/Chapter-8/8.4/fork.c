/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-16 17:49:30
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-16 17:50:25
 * @FilePath: \CS-APP\示例\Chapter-8\8.1.3\fork.c
 */
#include "stdio.h"

int main(void)
{
    int pid;
    if ((pid = fork()) < 0)
    {
        fprintf(stderr, "fork error: %s\n", stderror(errno));
        exit(0);
    }
}
