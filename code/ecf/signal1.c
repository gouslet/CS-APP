/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-02-02 18:23:22
 * @LastEditors: Elon C
 * @LastEditTime: 2021-02-02 18:39:16
 * @FilePath: \CSAPP\code\ecf\signal1.c
 */
/*8-36 signal1:这个程序是有缺陷的，因为它假设信号是排队的*/
/*Warning: This code is buggy!*/

void handler1(int sig)
{
    int olderrno = errno;

    if ((waitpid(-1, NULL, 0)) < 0)
        sio_error("waitpid error");

    Sio_puts("Handler reaped child\n");
    Sleep(1);
    errno = olderrno;
}

int main()
{
    int i, n;
    char buf[MAXBUF];

    if (signal(SIGCHILD, handler1) == SIG_ERR)
        unix_error("signal error");

    /*Parent creates children*/
    for (i = 0; i < 3; i++)
    {
        if (Fork() == 0)
        {
            printf("Hello from child %d\n", (int)getpid());
            exit(0);
        }
    }

    /*Parent waits for terminal input and then processes it*/
    if ((n = read(STDIN_FILENO, buf, sizeof(buf)) < 0))
        unix_error("read");

    printf("Parent processing input\n");
    while (1)
        ;
    exit(0);
}