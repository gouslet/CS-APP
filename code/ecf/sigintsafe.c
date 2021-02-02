/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-02-02 17:13:28
 * @LastEditors: Elon C
 * @LastEditTime: 2021-02-02 17:15:50
 * @FilePath: \CSAPP\code\ecf\sigintsafe.c
 */
/*8-30 SIGINT 处理程序的一个安全版本*/
#include "csapp.h"

void sigint_handler(int sig) /*Safe SIGINT handler*/
{
    Sio_puts("Caught SIGINT!\n"); /*Safe output*/
    _exit(0);                     /*Safe exit*/
}