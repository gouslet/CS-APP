/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-01-31 16:35:22
 * @LastEditors: Elon C
 * @LastEditTime: 2021-01-31 16:39:03
 * @FilePath: \CSAPP\code\netp\echo.c
 */
/*
读和回送文本行的echo函数
*/
#include "csapp.h"

void echo(int connfd)
{
    size_t n;
    char buf[MAXLINE];
    rio_t rio;

    Rio_readinitb(&rio, connfd);
    while ((n = Rio_readlineb(&rio, buf, MAXLINE)) != 0)
    {
        printf("server received %d bytes\n", (int)n);
        Rio_writen(connfd, buf, n);
    }
}