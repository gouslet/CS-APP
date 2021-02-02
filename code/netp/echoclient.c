/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-01-31 16:10:53
 * @LastEditors: Elon C
 * @LastEditTime: 2021-01-31 16:23:25
 * @FilePath: \CSAPP\code\netp\echoclient.c
 */
/*
11-20 echo客户端的主程序:
从标准输入读取文本行，发送文本行给服务器，从服务器读取回送的行，并输出结果到标准输出
*/
#include "csapp.h"

int main(int argc, **argv)
{
    int clientfd;
    char *host, *port, buf[MAXLINE];
    rio_t rio;

    if (argc != 3)
    {
        fprintf(stderr, "usage: %s<host> <port>\n", argv[0]);
        exit(0);
    }

    host = argv[1];
    port = argv[2];

    clientfd = Open_clientfd(host, port);
    Rio_readinitb(&rio, clientfd);

    while (Fgets(buf, MAXLINE, stdin) != NULL)
    {
        Rio_writen(clientfd, buf, strlen(buf));
        Rio_readlineb(&rio, buf, MAXLINE);
        Fputs(buf, stdout);
    }

    Close(clientfd);
    exit(0);
}