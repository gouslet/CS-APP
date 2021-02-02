/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-01-30 23:02:10
 * @LastEditors: Elon C
 * @LastEditTime: 2021-01-30 23:33:45
 * @FilePath: \CSAPP\code\netp\hostinfo.c
 */
/*11-17 HOSTINFO:展示出域名到和它相关联的IP地址之间的映射*/
#include "csapp.h"

int main(int argc, char **argv)
{
    struct addrinfo *p, *listp, hints;
    char buf[MAXLINE];
    int rc, flags;

    if (argc != 2)
    {
        fprintf(stderr, "usage: %s <domain name>\n", argv[0]);
        exit(0);
    }

    /*Get a list of addrinfo records*/
    memset(&hints, 0, sizeof(struct addrinfo));
    hints.ai_family = AF_INET;       /*IPv4 only*/
    hints.ai_socktype = SOCK_STREAM; /*Connection only*/
    if ((rc = getaddrinfo(argv[1], NULL, &hints, &listp)) != 0)
    {
        fprintf(stderr, "getaddrinfo error: %s\n", gai_strerror(rc));
        exit(1);
    }

    /*Walk the list and display each IP address*/
    flags = NI_NUMBERICHOST; /*Display address string instead of domain name*/
    for (p = listp; p; p = p->ai_next)
    {
        Getnameinfo(p->ai_addr, p->ai_addrlen, buf, MAXLINE, NULL, 0, flags);
        printf("%s\n", buf);
    }

    /*Clean up*/
    Freeaddrinfo(listp);

    exit(0);
}