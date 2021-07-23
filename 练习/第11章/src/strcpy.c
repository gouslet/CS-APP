#include "stdio.h"
#include "string.h"

int strcp(char *src,char *dst,int begin,int end) {
    while (*src != '\0') {
        printf("%s\n",*src);
        break;
    }
}

int main(void) {

    char *src = "sfdg";
    char dst[];
    memcpy(dst,src+1,2);
    printf("%s\n",dst);
    // strcp(src,dst,0,1);
}

