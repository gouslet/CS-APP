#include "csapp.h"

int main(int argc,char **argv,char **envp) {
    printf("argc = %d\n",argc);
    for (int i = 0;i < argc;i++) {
        printf("argv[%d] = %s\n",i,argv[i]);
    }

    if (Fork() == 0) {
        Dup2(STDIN_FILENO,atoi(argv[1]));
        // char *argv[] = {"./10.8","3","<","foo.txt"};
        Execve("./10.8",argv,envp);
    }

    Wait(NULL);
    return 0;
}