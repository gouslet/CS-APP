#include "csapp.h"

int main(int argc,char **argv) {
    int len = strlen(argv[1]);
    if (argv[1] == NULL ||len < 7 ||len > 15) {
        fprintf(stderr,"Error: argv[1] is not a valid dd number.\n");
        return 0;
    }
    int i = 0,j = 0,num = 0;;
    char c;

    printf("0x");
    while ((c = argv[1][i++]) != '\0') {
        if (isdigit(c)) {
            num = num*10 + c - '0';
            j = 1;
        } else if (c == '.') {
            if(j == 0 || num > 255 || num < 0) {
                fprintf(stderr,"Error: argv[1] is not a valid dd number.\n");
                return 0;                
            }

            printf("%x",num);
            j = num = 0;
        } else {
            fprintf(stderr,"Error: argv[1] is not a valid dd number.\n");
            return 0;
        }
    }
    if(num > 255 || num < 0) {
        fprintf(stderr,"Error: argv[1] is not a valid dd number.\n");
        return 0;                
    }
    printf("%x\n",num);
}
