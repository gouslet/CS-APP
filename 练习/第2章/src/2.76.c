/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-07-11 20:20:11
 * @LastEditors: Elon C
 * @LastEditTime: 2021-07-11 20:45:51
 * @FilePath: \CS-APP\练习\第2章\src\2.76.c
 */
#include "stdio.h"
#include "stdint.h"
#include "stdlib.h"
#include "string.h"

void *calloc(size_t nmemb, size_t size);
void test(size_t nmemb, size_t size);

int main(void)
{
    size_t nmemb1 = 0, size1 = 0;
    test(nmemb1, size1);
    size_t nmemb2 = 0, size2 = 1;
    test(nmemb2, size2);
    size_t nmemb3 = 1, size3 = 0;
    test(nmemb3, size3);
    size_t nmemb4 = 1, size4 = 1;
    test(nmemb4, size4);
    size_t nmemb5 = 10, size5 = 1 << 2;
    test(nmemb5, size5);
    size_t nmemb6 = 1000, size6 = 1 << 31;
    test(nmemb6, size6);
    size_t nmemb7 = 1000, size7 = 1 << 10;
    test(nmemb7, size7);
}

void test(size_t nmemb, size_t size)
{
    void *s = calloc(nmemb, size);
    printf("calloc(%u,%u) ", nmemb, size);
    if (s == NULL)
    {
        printf("failed\n");
    }
    else
    {
        printf("succeeded\n");
        free(s);
    }
}

void *calloc(size_t nmemb, size_t size)
{
    void *res;
    if (nmemb == 0 || size == 0)
    {
        return NULL;
    }
    for (size_t i = 0; i < nmemb; i++)
    {
        res = malloc(size);
        if (res == NULL)
        {
            return NULL;
        }
        else
        {
            memset(res, 0, size);
        }
    }
    return res;
}