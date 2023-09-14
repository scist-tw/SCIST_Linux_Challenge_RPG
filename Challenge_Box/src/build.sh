#!/bin/bash

architecture=$(uname -m)

###### Treasure Hunt ######
cd ~/Treasure_Hunt

# 4. file & chmod & execute
gcc -s file_chmod_execute/compass.c -o file_chmod_execute/compass
rm file_chmod_execute/compass.c
chmod -x file_chmod_execute/compass

# 6. create & write file
gcc -s create_write_file/translator.c -o create_write_file/translator
rm create_write_file/translator.c
chmod -x create_write_file/translator

# 7. mkdir & mv 1
# 8. mkdir & mv 2
gcc -s mkdir_mv/magic_engine.c -o mkdir_mv/magic_engine
rm mkdir_mv/magic_engine.c
chmod -x mkdir_mv/magic_engine

###### Treasure Hunt Finish ######


###### Treasure Hunter's Training ######
cd ~/Treasure_Hunters_Training

# 1. strings
if [[ $architecture == "aarch64" ]]; then
    as strings/chal_aarch64.asm -o strings/chal.o
elif [[ $architecture == "x86_64" ]]; then
    apt install nasm -yq
    nasm -f elf64 strings/chal_x86_64.asm -o strings/chal.o
fi
ld -s strings/chal.o -o strings/chal
rm strings/chal_*.asm strings/chal.o
chmod -x strings/chal

# 2. strings & grep
gcc -s --static strings_grep/chal.c -o strings_grep/chal
rm strings_grep/chal.c
chmod -x strings_grep/chal

# 3. strings & grep & regex 1
gcc -s --static strings_grep_regex_1/chal.c -o strings_grep_regex_1/chal
rm strings_grep_regex_1/chal.c
chmod -x strings_grep_regex_1/chal

# 4. strings & grep & regex 2
gcc -s --static strings_grep_regex_2/chal.c -o strings_grep_regex_2/chal
rm strings_grep_regex_2/chal.c
chmod -x strings_grep_regex_2/chal

###### Treasure Hunter's Training Finish ######
