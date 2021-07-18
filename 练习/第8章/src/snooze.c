#include <stdio.h>
#include "csapp.h"

// 打印出一条消息来描述进程调用sleep函数实际休眠了多长时间：
unsigned int snooze(unsigned int secs) {
    unsigned int left = sleep(secs);
    printf("Slept for %u of %u secs\n",secs - left,secs);
    return left;
}