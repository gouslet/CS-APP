/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-02-02 21:55:12
 * @LastEditors: Elon C
 * @LastEditTime: 2021-02-02 21:59:00
 * @FilePath: \CSAPP\code\ecf\restart.c
 */
/*8-44 当用户键入Ctrl+C 时，使用非本地跳转来重启动它自身的程序*/
#include "csapp.h"

sigjmp_buf buf;

void handler(int sig)
{
    siglongjmp(buf, 1);
}

int main()
{
    if (!sigsetjmp(buf, 1))
    {
        Signal(SIGINT, handler);
        Sio_puts("starting\n");
    }
    else
        Sio_puts("restarting\n");

    while (1)
    {
        Sleep(1);
        Sio_puts("processing...\n");
    }

    exit(0); /*Control never reaches here*/
}