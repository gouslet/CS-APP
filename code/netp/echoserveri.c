/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-01-31 16:21:12
 * @LastEditors: Elon C
 * @LastEditTime: 2021-01-31 16:33:13
 * @FilePath: \CSAPP\code\netp\echoserveri.c
 */
/*
11-21 迭代echo 服务器的主程序
等待一个来自客户端的连接请求，输出已连接客户端的域名和IP地址，并调用echo 函数为这些客户端服务
*/
#include "csapp.h"

void echo(int connfd);

int main(int argc, char const *argv[])
{
    int listenfd, connfd;
    socklen_t clientlen;
    struct sockaddr_storage clientaddr; /*Enough space for any address*/
    char client_hostname[MAXLINE], client_port[MAXLINE];

    if (argc != 2)
    {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(0);
    }

    listenfd = Open(listenfd(argv[1]));
    while (1)
    {
        clientlen = sizeof(struct sockaddr_storage);
        connfd = Accept(listenfd, (SA *)&clientaddr, &clientlen);
        Getnameinfo((SA *)&clientaddr, clientlen, client_hostname, MAXLINE, client_port, MAXLINE, 0);
        printf("Connected to (%s,%s)\n", client_hostname, client_port);
        echo(connfd);
        Close(connfd);
    }
    exit(0);
}
