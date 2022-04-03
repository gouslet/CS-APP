#include <stdio.h>
#include "csapp.h"
#include "unistd.h"

int main(void) {
    unsigned int snooze(unsigned int secs);
    printf("Starting sleep...\n");
    snooze(15);
    printf("Stopping sleep...\n");
}

