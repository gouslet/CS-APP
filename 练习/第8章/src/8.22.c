#include "csapp.h"

int mystem(char *command) {
    int status;
    pid_t pid;

    if ((pid = Fork()) == 0) {
        char *argv[] = {"/bin/sh","-c",command,NULL}; 
        execve(argv[0],argv,NULL);
        // if (execve(argv[0],argv,NULL) < 0) {
        //     _error("%s: Command not found.\n",command);
        // }
    }
    // Signal(SIGCHLD,handler);
    /*command正常退出*/
    if (waitpid(pid, &status, WUNTRACED) > 0)
        if (WIFEXITED(status)) 
            return WEXITSTATUS(status);
}
