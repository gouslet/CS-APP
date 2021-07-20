rio_readn函数从文件`rp`最多读`n`个字节到内存位置 `usrbuf`。
```c
ssize_t rio_readn(int fd, void *usrbuf, size_t n) { 
    size_t nleft = n; 
    ssize_t nread; 
    char *bufp = usrbuf; 

    while (nleft > 0) { 
        if ((nread = read(fd, bufp, nleft)) < 0) {
            if (errno == EINTR) /* Interrupted by sig handler return */ 
                nread = 0; /* and call read() again */ 
            else 
                return -1; /* errno set by read() */
        } else if (nread == 0) 
            break; 
        nleft -= nread; 
        bufp += nread; 
    } 
    return (n - nleft); /*Retur n >= 0 */ 
} 
```