#include "csapp.h"
// #undef MAXBUF
// #define MAXBUF 2

int main(int argc,char **argv) {
    int n;
    rio_t rio;
    char buf[MAXLINE];

    Rio_readinitb(&rio,STDIN_FILENO);
    while((n = Rio_readnb(&rio,buf,MAXBUF)) != 0)
        Rio_writen(STDOUT_FILENO,buf,n);
}