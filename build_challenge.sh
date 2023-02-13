#!/bin/bash

cp -r Challenge/Chinese_Parents_Challenge Challenge/Treasure_Hunt Challenge/Treasure_Hunters_Training Docker_Build/Challenge_Box/src

cd Docker_Build/Challenge_Box/src

gcc -s Treasure_Hunt/create_write_file/translator.c -o Treasure_Hunt/create_write_file/translator && rm Treasure_Hunt/create_write_file/translator.c && chmod -x Treasure_Hunt/create_write_file/translator
gcc -s Treasure_Hunt/file_chmod_execute/compass.c -o Treasure_Hunt/file_chmod_execute/compass && rm Treasure_Hunt/file_chmod_execute/compass.c && chmod -x Treasure_Hunt/file_chmod_execute/compass
gcc -s Treasure_Hunt/mkdir_mv/magic_engine.c -o Treasure_Hunt/mkdir_mv/magic_engine && rm Treasure_Hunt/mkdir_mv/magic_engine.c && chmod -x Treasure_Hunt/mkdir_mv/magic_engine
rm -r Treasure_Hunt/unzip_rar_tar

architecture=$(uname -m)
if [[ $architecture == "aarch64" ]]; then
    as Treasure_Hunters_Training/strings/chal_aarch64.asm -o Treasure_Hunters_Training/strings/chal.o
elif [[ $architecture == "x86_64" ]]; then
    nasm -f elf64 Treasure_Hunters_Training/strings/chal_x86_64.asm -o Treasure_Hunters_Training/strings/chal.o
fi
ld -s Treasure_Hunters_Training/strings/chal.o -o Treasure_Hunters_Training/strings/chal && rm Treasure_Hunters_Training/strings/chal.o Treasure_Hunters_Training/strings/chal_*.asm && chmod -x Treasure_Hunters_Training/strings/chal
gcc -s --static Treasure_Hunters_Training/strings_grep/chal.c -o Treasure_Hunters_Training/strings_grep/chal && rm Treasure_Hunters_Training/strings_grep/chal.c && chmod -x Treasure_Hunters_Training/strings_grep/chal
gcc -s --static Treasure_Hunters_Training/strings_grep_regex_1/chal.c -o Treasure_Hunters_Training/strings_grep_regex_1/chal && rm Treasure_Hunters_Training/strings_grep_regex_1/chal.c && chmod -x Treasure_Hunters_Training/strings_grep_regex_1/chal
gcc -s --static Treasure_Hunters_Training/strings_grep_regex_2/chal.c -o Treasure_Hunters_Training/strings_grep_regex_2/chal && rm Treasure_Hunters_Training/strings_grep_regex_2/chal.c && chmod -x Treasure_Hunters_Training/strings_grep_regex_2/chal


cd ../../..

cp -r Challenge/Special_Identity/Web_Service/* Docker_Build/Web_Service
cp -r Challenge/Special_Identity/SSH_Service/* Docker_Build/SSH_Service

gcc -s Docker_Build/SSH_Service/src/neo/red_pill.c -o Docker_Build/SSH_Service/src/neo/red_pill && rm Docker_Build/SSH_Service/src/neo/red_pill.c && chmod -x Docker_Build/SSH_Service/src/neo/red_pill
