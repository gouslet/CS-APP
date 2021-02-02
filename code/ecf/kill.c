/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-02-02 12:59:09
 * @LastEditors: Elon C
 * @LastEditTime: 2021-02-02 13:02:42
 * @FilePath: \CSAPP\code\ecf\kill.c
 */
/*8-29 使用kill函数发送信号给子进程*/
#include "csapp.h"

int main()
{
    pid_t pid;

    /*Child sleeps until SIGKILL signal received,then dies*/
    if ((pid = Fork()) == 0)
    {
        Pause(); /*Wait for a signal to arrive*/
        printf("control should never reach here!\n");
        exit(0);
    }

    /*Parent sends a SIGKILL signal to a child*/
    Kill(pid, SIGKILL);
    exit(0);
}