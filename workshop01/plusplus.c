// Q3
#include <stdio.h>

int f(int x, int y)
{
    return 10 * x + y;
}

int main(void)
{
    int i, j;
    i = 0;
    j = f(++i, ++j);
    printf("%d\n", j);
    return 0;
}

// gcc -o plusplus.exe plusplus.c
// it prints 11, however if we compile using different
// optimization flag or different compile, the result
// will be different - depends on compiler's order of evaluation.
// it could also be arbitrary 12, 21, 22.