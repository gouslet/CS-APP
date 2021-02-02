/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-02-01 23:38:36
 * @LastEditors: Elon C
 * @LastEditTime: 2021-02-01 23:45:45
 * @FilePath: \CSAPP\code\ecf\waitpid2.c
 */
/*8-19 使用waitpid 按照创建子进程的顺序来回收这些僵死子进程*/
#include "csapp.h"
#define N 2

int main()
{
    int status, i;
    pid_t pid[N], retpid;

    /*Parent creates N Children*/
    for (i = 0; i < N; i++)
        if ((pid[i] = Fork()) == 0) /*Child*/
            exit(100 + i);

    /*Parent reaps N children in order*/
    i = 0;
    while ((repid = waitpid(pid[i++], &status, 0)) > 0)
    {
        if (WIFEXITED(status))
            printf("child %d terminated normally with exit status=%d\n", retpid, WEXITSTATUS(status));
        else
            printf("child %d terminated abnormally\n", retpid);
    }

    /*The only normal termination is if there are no more children*/
    if (errno != ECHILD)
        unix_error("waitpid error");

    exit(0);
}