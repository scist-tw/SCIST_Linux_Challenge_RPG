// gcc -s --static chal.c -o chal
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

char flag[] = "SCIST{Oh I forget to print it out @@}";

char *buf[] = {
    "Once upon a time, there's a brilliant men call MuMu ...",
    "All roads lead to Rome, but someone is always born in Rome. (Just like MuMu",
    "Man in the lake says : gold flag or slver flag?"
};

int main(){
    srand(time(NULL));
    setvbuf(stdin, 0, 2, 0);
    setvbuf(stdout, 0, 2, 0);

    int idx;
    printf("Please Choose your lucky number : ");
    scanf("%d", &idx);
    printf("%s\n", buf[(idx + rand()) % 3]);

    return 0;
}