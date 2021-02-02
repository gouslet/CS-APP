/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-02-02 20:44:38
 * @LastEditors: Elon C
 * @LastEditTime: 2021-02-02 20:51:03
 * @FilePath: \CSAPP\code\ecf\procmask2.c
 */
/*
8-40 用sigprocrnask 来同步进程。在这个例子中，父进程保证在相应的deletejob之前执行addjob
*/
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
    sigset_t mask_all, mask_one, prev_one;

    Sigfillset(&mask_all);
    Sigemptyset(&mask_one);
    Sigaddset(&mask_one, SIGCHILD);
    Signal(SIGCHILD, handler);
    initjobs(); /*Initialize the job list*/

    while (1)
    {
        Sigprocmask(SIG_BLOCK, &mask_one, &prev_one); /*Block SIGCHILD*/
        if ((pid = Fork()) == 0)                      /*Child process*/
        {
            Sigprocmask(SIG_SETMASK, &prev_one, NULL); /*Unblock SIGCHILD*/
            Execeve("/bin/date", argv, NULL);
        }
        Sigprocmask(SIG_BLOCK, &mask_all, &prev_all); /*Parent process*/
        addjob(pid);                                  /*Add the child to the job list*/
        Sigprocmask(SIG_SETMASK, &prev_one, NULL);    /*Unblock SIGCHILD*/
    }
    exit(0);
}