#include <stdio.h>
#include <stdlib.h>
#include "csapp.h"

void sigint_handler(int sig) {/*SIGINT handler*/
    printf("\nStopping sleep...\n");
}

int main(int argc,char *argv[],char **envp) {
    unsigned int snooze(unsigned int secs);
    if (argc < 1) {        
        printf("usage: snooze x (x is int number，unit:second)\n");
        exit(0); 
    }

    /* Install the SIGINT handler */
    if (signal(SIGINT, sigint_handler) == SIG_ERR) 
        unix_error("signal error");

    printf("Starting sleep...\n");
    snooze(atoi(argv[1]));
    return 0;
}

