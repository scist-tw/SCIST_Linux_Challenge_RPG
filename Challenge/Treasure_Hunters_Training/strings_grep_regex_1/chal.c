// gcc -s --static chal.c -o chal
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char cipher[] = "yxqG4{rpicpSY9NzAGKanYPLTwxWa6tIY8zOCbKNHtmLlIhMDcu5Zyqhj6tEk}";
char secret_key[] = {0x5d, 0x5, 0x71, 0x5f, 0x51, 0x51, 0x21, 0x28, 0x18, 0x14, 0x14, 0x18, 0x6f, 0x2c, 0x20, 0x40, 0x2e, 0x45, 0x38, 0x11, 0x57, 0x40, 0x66, 0x6f, 0x3f, 0x71, 0x20, 0x30, 0x49, 0x4f, 0x6e, 0x27, 0x43, 0x5b, 0x41, 0x4b, 0x67, 0x39, 0x3d, 0xe, 0x8, 0x13, 0x3d, 0x4d, 0x5d, 0x6b, 0x7d, 0x3a, 0x39, 0xb, 0x28, 0x39, 0xa, 0x76, 0x10, 0x6f, 0xa, 0x24, 0x20, 0x70};
char *key[] = {"LH4kmXae6THFcz1TouibKAHAvYbSDM9rkWmgO34WuYFooHp8VD8YxabH9t4G", "9N3M2BNC4bN9Jk10pJAHlFFCLjbjMrRgjgmtRJC2hlPhj5qmjh13M3owMJwF", "dDYljRmsVC5zJlARMS_g4lVAuh0uLbBJZGhZhR32Dy3810aVKOCIR_dPoPKR", "p8iyNjq06hWxqhp4toADWK7N1znYt0qDGl4TYXAUjIZ4WDrJeLvdy9Zd2u2s", "YRwBXjoRP18TvQYwUjK0W4dZpX2skAzOpnt3p8Zg7BfLgQrZHMm_o7QV1HRd", "E6O5f2NEpn3xAC9ALsFPsdQ7QRdySGHDwwmnNSXWiTcj8bwmTUyIF87_3rkM", "KuUzfkYPhIuhbMsT0IllgGJqhCDYpjh76URGeqvJ0bqnmczUpbN0dDd65RHL"};
int shift_num[] = {19, 17, 11, 4, 4, 14, 19};

void string_xor(char *str1, char *str2, size_t length, char *result){
    for (int i = 0;i < length;i++){
        result[i] = str1[i] ^ str2[i];
    }
}

void string_copy(char *str1, char *str2, size_t length){
    for (int i = 0;i < length;i++){
        str1[i] = str2[i];
    }
}

void string_shift_right(char *str1, size_t num, char *result){
    string_copy(result, str1 + 60 - num, num);
    string_copy(result + num, str1, 60 - num);
}

int main(){
    setvbuf(stdin, 0, 2, 0);
    setvbuf(stdout, 0, 2, 0);

    char new_cipher[63];
    printf("I lost my ciphertext of flag, can you help me find the ciphertext? It looks like \"some_char{some_char}\"\n");
    printf("Ciphertext > ");
    scanf("%63s", new_cipher);
    if (strcmp(new_cipher, cipher) != 0){
        printf("It doesn't look like my flag !\n");
        return 0;
    }

    char state[] = "yxqG4rpicpSY9NzAGKanYPLTwxWa6tIY8zOCbKNHtmLlIhMDcu5Zyqhj6tEk";
    char new_state[61];
    string_xor(state, secret_key, 60, new_state);
    string_copy(state, new_state, 60);

    for (int i = 0;i < 7;i++){
        string_shift_right(state, shift_num[i], new_state);
        string_copy(state, new_state, 60);
        string_xor(state, key[i], 60, new_state);
        string_copy(state, new_state, 60);
    }

    char flag[63];
    string_copy(flag, state, 5);
    printf("%s", flag);
    printf("{");
    string_copy(flag, state + 5, 55);
    printf("%s", flag);
    printf("}\n");

    return 0;
}