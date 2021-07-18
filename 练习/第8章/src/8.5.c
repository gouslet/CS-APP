#include <stdio.h>
#include "csapp.h"
#include "unistd.h"

int main(void) {
    unsigned int snooze(unsigned int secs);
    printf("Starting sleep...\n");
    snooze(15);
    printf("Stopping sleep...\n");
}

unsigned int snooze(unsigned int secs) {
    unsigned int left = sleep(secs);
    printf("Slept for %u of %u secs\n",secs - left,secs);
    return left;
}