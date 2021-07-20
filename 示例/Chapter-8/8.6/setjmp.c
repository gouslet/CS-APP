/*
 *非本地跳转的示例。本示例表明了使用非本地跳转来从深层嵌套的
 *函数调用中的错误情况恢复，而不需要解开整个栈的基本框架
 */
#include "csapp.h"

jmp_buf buf;

int error1 = 0;
int error2 = 1;

void foo(void),bar(void);

int main() {
    switch(setjmp(buf)) {
        case 0:
            foo();
            break;
        case 1:
            printf("Detected an error1 condition in foo\n");
            break;
        case 2:
            printf("Detected an error2 condition in foo\n");
            break;
        default:
            printf("Unknown errorcondition in foo\n");
    }
    exit(0);
}

/*
 *Deploy nested function foo
 */
void foo(void) {
    if (error1)
        longjmp(buf,1);
    bar();
}

void bar(void) {
    if (error2)
        longjmp(buf,2);
}