/*
 *当用户键入Ctrl+C时，使用非本地跳转来重启动它自身的程序
 */

#include "csapp.h"

sigjmp_buf buf;

void handler(int sig) {
    siglongjmp(buf, 1);//非本地跳转，回到main函数的开始处
}

int main() {
    if (!sigsetjmp(buf, 1)) {   //保存调用环境和信号的上下文
        Signal(SIGINT, handler);
        Sio_puts("starting\n");
    } else
        Sio_puts("restarting\n");
    
    while(1) {
        Sleep(1);
        Sio_puts ("processing...\n");
    }
    
    exit(0); /* Control never reaches here */
}