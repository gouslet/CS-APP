#include <stdio.h>

int main(int argc,char *argv[],char **envp ) {
    printf("Command-ine arguments:\n");  
    for (int i = 0;i < argc;i++) {
        printf("argv[%d]:%s\n",i,argv[i]);
    }
    printf("Enviroments variables:\n");
    int i = 0;
    while (envp != NULL && *envp != NULL) {
        printf("envp[%d]:%s\n",i++,*envp++);
    }
}