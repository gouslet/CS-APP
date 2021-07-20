#include "csapp.h"

int main(int argc,char **argv,char **envp) {
    char *e[] = {"/bin/sh","-c","ls",NULL};
    execve(e[0],e,envp);
}