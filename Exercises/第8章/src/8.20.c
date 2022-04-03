#include "csapp.h"

int main(int argc,char **argv,char **envp) {
    // printf("%s\n",getenv("COLUMNS"));
    execve("/bin/ls",argv,envp);
}