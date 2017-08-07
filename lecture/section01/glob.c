#include <stdio.h>

int glob = 0;

int inc(void)
{
    glob++;
    return glob;
}

void main()
{
    printf("inc() - inc() = %d\n", inc() - inc());
}

// gcc -o glob.exe glob.c
// inc() - inc() = -1

// It depends. If the first inc() is evaluated first, it will print
// 1 - 2 = -1. If it is evaluated second, it will print out 2 - 1 = 1.
// The C language does not specify which.

// Different C compiler different optimization flag gives different answer.