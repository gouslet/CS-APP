#include "csapp.h"

int main(int argc,char **argv,char **envp) {
    int mystem(char*); 

    mystem("ls");
}

int mystem(char *command) {
        char *argv[] = {"/bin/sh","-c",command,NULL};
        execve(argv[0],argv,NULL);
}