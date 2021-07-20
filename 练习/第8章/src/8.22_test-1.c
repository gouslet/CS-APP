#include <stdio.h>
#include <assert.h>

int mystem(char *command);

int main() {

    assert(0==mystem("1/0"));
}