/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-02-02 13:16:46
 * @LastEditors: Elon C
 * @LastEditTime: 2021-02-02 13:21:03
 * @FilePath: \CSAPP\code\ecf\sigint.c
 */
/*8-30 用一个用信号处理程序捕获SIGINT信号的程序*/
#include "csapp.h"

void sigint_handler(int sig) /*SIGINT handler*/
{
    printf("Caught SIGINT!\n");
    exit(0);
}

int main()
{
    /*Install the SIGINT handler*/
    if (signal(SIGINT, sigint_handler) == SIG_ERR)
    {
        unix_error("signal error");
    }

    pause(); /*Wait for the receipt of a signal*/

    return 0;
}