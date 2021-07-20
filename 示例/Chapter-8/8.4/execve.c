#include "csapp.h"

int main(int argc,char **argv,char **envp) {
    char *e[] = {"/bin/ls","-l",NULL};
    execve(e[0],e,envp);
}