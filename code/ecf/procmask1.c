/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-02-02 20:31:05
 * @LastEditors: Elon C
 * @LastEditTime: 2021-02-02 20:41:39
 * @FilePath: \CSAPP\code\ecf\procmask1.c
 */
/*
8-39 一个具有细微同步错误的shell程序。
如果子进程在父进程能够开始运行前就结束了，那么addjob 和deletejob 会以错误的方式被调用
*/
/* WARNING: This code is buggy! */
void handler(int sig)
{
    int olderrno = errno;
    sigset_t mask_all, prev_all;
    pid_t pid;

    Sigfillset(&mask_all);
    while ((pid = waitpid(-1, NULL, 0)) > 0) /*Reap a zombie child*/
    {
        Sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
        deletejob(pid); /*Delete the child from the job list*/
        Sigprocmask(SIG_SETMASK, &prev_all, NULL);
    }

    if (errno != ECHILD)
        Sio_error("waitpid error");
    errno = olderrno;
}

int main(int argc, **argv)
{
    int pid;
    sigset_t mask_all, prev_all;

    Sigfillset(&mask_all);
    Signal(SIGCHILD, handler);
    initjobs(); /*Initialize the job list*/

    while (1)
    {
        if ((pid = Fork()) == 0)
        { /*Child process*/
            Execeve("/bin/date", argv, NULL);
        }
        Sigprocmask(SIG_BLOCK, &mask_all, &prev_all); /*Parent process*/
        addjob(pid);                                  /*Add the child to the job list*/
        Sigprocmask(SIG_SETMASK, &prev_all, NULL);
    }
    exit(0);
}