/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-02-02 19:53:18
 * @LastEditors: Elon C
 * @LastEditTime: 2021-02-02 19:56:02
 * @FilePath: \CSAPP\code\ecf\signal2.c
 */
/*8-37 signal2:图8-36的一个改进版本，它能够正确解决信号不会排队等待的情况*/
void handler2(int sig)
{
    int olderrno = errno;

    while (waitpid(-1, NULL, 0) > 0)
        Sio_puts("Handler reaped child\n");

    if (errno != ECHILD)
        Sio_error("waitpid error");
    Sleep(1);
    errno = olderrno;
}