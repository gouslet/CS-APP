/*
 * @Descripttion: 
 * @version: v0.1
 * @Author: Elon C
 * @Date: 2021-02-01 18:25:51
 * @LastEditors: Elon C
 * @LastEditTime: 2021-02-01 18:26:53
 * @FilePath: \CSAPP\示例\Chapter-8\8.1.3\helloworld.c
 */
/*通过系统级函数write输出hello world*/
int main(int argc, char const *argv[])
{
    write(1, "hello world", 13);
    _exit(0);
}
