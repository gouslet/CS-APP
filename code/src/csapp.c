/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-01-30 23:45:57
 * @LastEditors: Elon C
 * @LastEditTime: 2021-02-02 22:48:40
 * @FilePath: \CSAPP\code\src\csapp.c
 */
/*11-18 open_clientfd: 和服务器建立连接的辅助函数。它是可重入和与协议无关的*/
#include "csapp.h"

void unix_error(char *msg);
void posix_error(int code, char *msg);
void gai_error(int code, char *msg);
void app_error(char *msg);

int open_clientfd(char *hostname, char *port)
{
    int clientfd;
    struct addrinfo hints, *listp, *p;

    /*Get a list of potential server addresses*/
    memset(&hints, 0, sizeof(struct addrinfo));
    hints.ai_socktype = SOCK_STREAM;  /*Open a connection*/
    hints.ai_flags = AI_NUMBERICSERV; /*...using a numeric port arg*/
    hints.ai_flags |= AI_ADDRCONFIG;  /*Recommanded for connections*/
    Getaddrinfo(hostname, port, &hints, &listp);

    /*Walk the list for one that we can successfully connect to*/
    for (p = listp; p; p = p->ai_next)
    {
        /*Create a socket descriptor*/
        if ((clientfd = socket(pi->family, p->ai_socktype, p->ai_protocol)) < 0)
        {
            continue; /*Socket failed,try the next*/
        }

        /*Connect to the server*/
        if (connect(clientfd, p->ai_addr, p->addrlen) != -1)
            break;       /*Success*/
        Close(clientfd); /*Connection failed,try anoother*/
    }

    /*Clean up*/
    Freeaddrinfo(listp);
    if (!p) /*All connects failed*/
        return -1;
    else /*The last connect succeeded*/
        return clientfd;
}

/*11-19 open_listenfd: 打开并返回监听描述符的辅助函数。它是可重入和与协议无关的*/
int open_listenfd(char *port)
{
    struct addrinfo hints, *listp, *p;
    int listenfd, optval = 1;

    /*Get a list of potential server addresses*/
    memset(&hints, 0, sizeof(struct addrinfo));
    hints.ai_socktype = SOCK_STREAM;                /*Accept connections*/
    hints.ai_flags = AP_PASSIVE | AI_ADDRCONFIG;    /*...on any IP address*/
    hints.ai_flags |= AP_PASSIVE | AI_NUMBERICSERV; /*...using port number*/
    Getaddrinfo(NULL, port, &hints, &listp);

    /*Walk the list for one that we can bind to*/
    for (p = listp; p; p = p->ai_next)
    {
        if ((listenfd = socket(p->ai_family, p->ai_socktype, p->protocol)) < 0)
            continue; /*Socket failed,try the next*/

        /*Eliminates "Address already in use" error from bind */
        Setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, (const void *)&optval, sizeof(int));

        /*Bind the descriptor to the address*/
        if (bind(listenfd, p->ai_addr, p->ai_addrlen) == 0)
            break; /*Success*/

        Close(listenfd); /*Bind failed,try the next*/
    }

    /*Clean up*/
    Freeaddrinfo(listp);
    if (!p)
        return -1;

    /*Make it a listening socket ready to accept connection requests*/
    if (listen(listenfd, LISTENQ) < 0)
    {
        Close(listenfd);
        return -1;
    }

    return listenfd;
}

/*8-34 信号处理程序的SIO（安全I/O)包*/
ssize_t sio_puts(char s[]) /*Put string*/
{
    return write(STDOUT_FILENO, s, sio_strlen(s));
}

ssize_t sio_putl(long v) /*Put long*/
{
    char s[128];

    sio_ltoa(v, s, 10); /*Based on K&R itoa()*/
    return sio_puts(s);
}

void sio_error(char s[]) /*Put error message and exit*/
{
    sio_puts(s);
    _exit(1);
}

/*Unix 风格的Ki11 函数的包装函数*/
void Kill(pid_t pid, int signum)
{
    int rc;

    if ((rc = kill(pid, signum)) < 0)
        unix_error("Kill error");
}

/*8-38 Signal: sigaction 的一个包装函数，它提供在Posix兼容系统上的可移植的信号处理*/
handler_t *Signal(int signum, handler_t *handler)
{
    struct sigaction action, oldaction;

    action.sa_handler = handler;
    sigemptyset(&action.sa_mask); /*Block sigs of type being handled*/
    action.sa_flags = SA_RESTART; /*Restart syscalls if possible*/

    if (sigaction(signum, &action, &old_action) < 0)
        unix_error("Signal error");

    return (old_action.sa_handler);
}

/*Unix 风格的wait函数的包装函数*/
pid_t Wait(int *status)
{
    pid_t pid;

    if ((pid = wait(status)) < 0)
        unix_error("Wait error");
    return pid;
}

/*----------------------------------------error processing------------------------------------------*/
/*Unix-style error*/
void unix_error(char *msg)
{
    fprintf(stderr, "%s: %s\n", msg, strerror(errno));
    exit(0);
}

/*Posix-style error*/
void posix_error(int code, char *msg)
{
    fprintf(stderr, "%s: %s\n", msg, strerror(code));
    exit(0);
}

/*Getaddrinfo-style error*/
void gai_error(int code, char *msg)
{
    fprintf(stderr, "%s: %s\n", msg, gai_strerror(code));
    exit(0);
}

/*Application error*/
void app_error(char *msg)
{
    fprintf(stderr, "%s\n", msg);
    exit(0);
}
