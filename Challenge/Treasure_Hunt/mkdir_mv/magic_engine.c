// gcc -s magic_engine.c -o magic_engine
#include <stdio.h>
#include <limits.h>
#include <unistd.h>
#include <pwd.h>
#include <string.h>

char key[] = {0x67, 0x3f, 0x15, 0xcd, 0xc7, 0x82, 0x89, 0x70, 0x1d, 0xa8, 0x37, 0xc, 0xbf, 0xe0, 0x6d, 0x97, 0xe1, 0x6, 0x0, 0xba, 0xbc, 0xe3, 0xf4, 0xfd, 0x4b, 0xd, 0x75, 0xb1, 0xf6, 0xca, 0x3b, 0xcd, 0xa1, 0x11, 0x22, 0xa1, 0x92, 0x79, 0x6c, 0x16, 0xe5, 0x8d, 0xa7, 0xd7, 0xbe, 0x36, 0x88, 0x99, 0x6f, 0x9a, 0xcf};
char cipher1[] = {0x34, 0x7c, 0x5c, 0x9e, 0x93, 0xf9, 0xc4, 0x11, 0x7a, 0xc1, 0x54, 0x2c, 0xda, 0x8e, 0xa, 0xfe, 0x8f, 0x63, 0x20, 0xde, 0xd3, 0x86, 0x87, 0x93, 0x6c, 0x79, 0x55, 0xdd, 0x9f, 0xa1, 0x5e, 0xed, 0xd2, 0x78, 0x4c, 0xca, 0xfb, 0x17, 0xb, 0x36, 0x96, 0xe5, 0xce, 0xa7, 0xcd, 0x16, 0xb6, 0xa5, 0x12};
char cipher2[] = {0x34, 0x7c, 0x5c, 0x9e, 0x93, 0xf9, 0xd0, 0x15, 0x6e, 0x84, 0x17, 0x78, 0xd7, 0x81, 0x19, 0xb0, 0x92, 0x26, 0x72, 0xd3, 0xdb, 0x8b, 0x80, 0xdc, 0x6b, 0x5a, 0x14, 0xd8, 0x82, 0xeb, 0x1b, 0x9e, 0xc9, 0x78, 0x52, 0x81, 0xfb, 0xa, 0x4c, 0x65, 0x8c, 0xe3, 0xcc, 0xbe, 0xd0, 0x51, 0xa8, 0xb8, 0x50, 0xbb, 0xb2};

void print_flag(char *cipher, size_t length){
    for (int i = 0;i < length;i++){
        printf("%c", key[i] ^ cipher[i]);
    }
    printf("\n\n");
}

void get_binary_path(char *argv0, char *binary_path){
    char original_path[PATH_MAX];

    getcwd(original_path, PATH_MAX);
    chdir(argv0);
    getcwd(binary_path, PATH_MAX);
    chdir(original_path);
}

int is_same_path(char *path1,char *path2){
    int i = 0;
    while ((*(path1 + i) != 0) || (*(path2 + i) != 0)){
        if (*(path1 + i) != *(path2 + i)){
            return 0;
        }
        i++;
    }
    return 1;
}

int main(int argc, char **argv)
{
    char binary_path[PATH_MAX];
    char shipwreck_path[] = "/home/treasure_hunter/Shipwreck_Ship";
    char titanic_path[] = "/home/treasure_hunter/Titanic";

    get_binary_path(argv[0], binary_path);

    if (is_same_path(shipwreck_path, binary_path) == 1) {
        print_flag(cipher1, 49);
        printf("Task Prompt : Well the magic engine just work on ship call Titanic.\n\n");
        puts("Chinese Parents' Challenge (side quest) (challenge is in ~/Chinese_Parents_Challenge/):");
        puts("While you were working hard to build a ship, you were accidentally caught by your Chinese parents. They penalize you for finishing the challenge before continuing to do your own thing T_T.");
        puts("1. hex : translate hex to string");
        puts("2. base64 and pipeline : decode the string");
        puts("3. run c : run the c code");
        puts("4. run python : run the python code");
        printf("\n");
        return 0;
    }

    if (is_same_path(titanic_path, binary_path) == 1) {
        print_flag(cipher2, 51);
        printf("Task Prompt : Follow the treasure map to a small island, where there is a maze (~/ocean/small_island/maze). The treasure map says that there is a flag inserted somewhere in the maze, and under that flag is the treasure.\n\n");
        return 0;
    }

    printf("Please put me in a ship!\n");

    return 0;
}