/*
 *hex2dd 将它的十六进制参数转换为点分十进制串并打印出结果。
 * 输入必须以0x或0X开头，首位为0可省略
 */
#include "csapp.h"
#include "math.h"
#include "string.h"
#define SIZE 4

int main(int argc,char **argv) {
    unsigned atoh(char *);
    if (argc < 1) {
        fprintf(stderr,"Usage: hex2dd x\nemp: 0xabcd1234\n");
        return 0;
    }
    int len = strlen(argv[1]);  //strim '\0';
    if (len < 9) {
        fprintf(stderr,"Error: size of argv[1] must be 11 or 10.\n");
        return 0;
    }
    if (argv[1][0] != '0'|| !(argv[1][1] == 'x' || argv[1][1] == 'X')) {
        fprintf(stderr,"Error: argv[1] must be started with \"0x\" or \"0X\"\n");
        return 0;
    }
    for (int i = 2;i < len;i++) {
        int valid = (argv[1][i] >= '0' && argv[1][i] <= '9') || (argv[1][i] >= 'a' && argv[1][i] <= 'f') || (argv[1][i] >= 'A' && argv[1][i] <= 'F');
        if (!valid) {
            fprintf(stderr,"Error: argv[1] is not a valid hex number\n");
            exit(0);
        }
    }

    char bytes[2];

    if (len == 9) {
        bytes[0] = '0';
        bytes[1] = argv[1][2];
        printf("%u",atoh(bytes));
        for (int i = 2;i < 5;i++) {
            bytes[0] = argv[1][2*i - 1];
            bytes[1] = argv[1][2*i];
            printf(".%u",atoh(bytes));
        }
    } else {
        bytes[0] = argv[1][2];
        bytes[1] = argv[1][3];
        printf("%u",atoh(bytes));
        for (int i = 2;i < 5;i++) {
            bytes[0] = argv[1][2*i];
            bytes[1] = argv[1][2*i + 1];
            printf(".%u",atoh(bytes));
        }
    }

    printf("\n");

    return 0;
}

unsigned atoh(char *s) {
    unsigned n = 0;
    for(int i = 0;i < 2;i++) {
        unsigned e = (unsigned)pow(16,1 - i);
        if (s[i] >= '0' && s[i] <= '9') 
            n += (s[i] - '0') * e;
        else if (s[i] >= 'a' && s[i] <= 'f')
            n += (s[i] - 'a' + 10) * e;
        else if (s[i] >= 'A' && s[i] <= 'F')
            n += (s[i] - 'A' + 10) * e;
    }
    return n;
}
