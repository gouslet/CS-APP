/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-02-02 20:53:39
 * @LastEditors: Elon C
 * @LastEditTime: 2021-02-02 22:36:14
 * @FilePath: \CSAPP\code\ecf\waitforsignal.c
 */
/*8-41 用循环来等待信号。这段代码正确:但循环是一种浪费*/
#include "csapp.h"

volatile sig_atomic_t pid;

void sigchild_handler(int s)
{
    int olderrno = errno;
    pid = waitpid(-1, NULL, 0);
    errno = olderrno;
}

void sigint_handler(int s)
{
}

int main(int argc, char const *argv[])
{
    sigset_t mask, prev;

    Signal(SIGCHILD, sigchild_handler);
    Signal(SIGINT, sigint_handler);
    Sigemptyset(&mask);
    Sigaddset(&mask, SIGCHILD);

    while (1)
    {
        Sigprocmask(SIG_BLOCK, &mask, &prev); /*Block SIGCHILD*/
        if (Fork() == 0)                      /*Child*/
            exit(0);

        /*Parent*/
        pid = 0;
        Sigprocmask(SIG_SETMASK, &prev, NULL); /*Unblock SIGCHILD*/

        /*Wait for SIGCHILD to be received(wastefull)*/
        while (!pid)
            ;
        /*Do some work after receiving SIGCHILD*/
        printf(".");
    }
    exit(0);
}
