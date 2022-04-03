#include "csapp.h"

int foo(int n) {
    int i;
    for (i = 0; i < n; i++)
        Fork();
    printf("hello\n");
}

int main(void) {
    // for (int i = 0;i < 3;i++) {
    int i = 3;
        printf("n = %d:\n",i);
        foo(i);
    // }
    return 0;
}