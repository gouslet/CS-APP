#include "csapp.h"
#define BUF_SIZE 20

char *tfgets(char *s,int size,FILE *stream);
sigjmp_buf buf;

void handler(int sig) {
    Alarm(0);
    siglongjmp(buf,1);
}

char *tfgets(char *s,int size,FILE *stream) {
    
    Signal(SIGALRM,handler);
    
    Alarm(5);
    
    if (!sigsetjmp(buf,1))
        return Fgets(s,size,stream);
    else
        return NULL;
}

int main(int argc,char **argv,char **envp) {
    char temp_buffer[BUF_SIZE];
    char *result = tfgets(temp_buffer,BUF_SIZE,stdin);
    if (result) {
        printf("Input: %s\n",result);
    }else {
        fprintf(stderr,"Time out!\n");
    }
    return 0;
}
