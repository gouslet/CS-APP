/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-02-02 21:27:44
 * @LastEditors: Elon C
 * @LastEditTime: 2021-02-02 21:36:49
 * @FilePath: \CSAPP\code\ecf\sigsuspend.c
 */
/*8-42 用sigsuspend 来等待信号*/
#include "csapp.h"

volatile sig_atomic_t pid;

void sigchild_handler(int s)
{
    int olderrno = errno;
    pid = Waitpid(-1, NULL, 0);
    errno = olderrno;
}

void sigint_handler()
{
}

int main(int argc, char const *argv[])
{
    sigset_t mask, prev;

    Signal(SIGCHLD, sigchild_handler);
    Signal(SIGINT, sigint_handler);
    Sigemptyset(&mask);
    Sigaddset(&mask, SIGCHLD);

    while (1)
    {
        Sigprocmask(SIG_BLOCK, &mask, &prev); /*Block SIGCHLD*/
        if (Fork() == 0)                      /*Child*/
            exit(0);

        /*Wait for SIGCHLD to be received*/
        pid = 0;
        while (!pid)
        {
            sigsuspend(&prev);
        }

        /*Optionally unblock SIGCHLD*/
        Sigprocmask(SIG_SETMASK, &prev, NULL);

        /*Do some work after receiving SIGCHLD*/
        printf(".");
    }
    exit(0);
}
