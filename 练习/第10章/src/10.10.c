/*
 *从标准输入或者文件复制文本到标准输出
 */
#include "csapp.h"

int main(int argc, char **argv) {
    int n,fd;
    rio_t rio;
    char buf[MAXLINE];

    if (argc != 2)
       Rio_readinitb(&rio, STDIN_FILENO);
    else {
        fd = open(argv[1],O_RDONLY,0);
        Rio_readinitb(&rio,fd);
    }

    while ((n = Rio_readlineb(&rio, buf, MAXLINE))!= 0)
        Rio_writen(STDOUT_FILENO, buf, n);
}