#!/bin/bash

DEBIAN_FRONTEND=noninteractive apt update && apt upgrade -yq && apt install gcc g++ binutils python3 python3-pip vim unrar zip unzip curl wget iputils-ping sudo sshpass -yq

useradd -ms /bin/bash treasure_hunter
echo 'treasure_hunter:password' | chpasswd
groupadd -g 1337 "SCIST{GGGGGGIIIIIIDDDDDD}"
usermod -aG "SCIST{GGGGGGIIIIIIDDDDDD}" treasure_hunter
usermod -aG sudo treasure_hunter

chown -R treasure_hunter:treasure_hunter /root/Chinese_Parents_Challenge /root/Treasure_Hunt /root/Treasure_Hunters_Training

cd /root/Treasure_Hunt
mv Welcome/.bash_init /home/treasure_hunter
echo -e "\n. /home/treasure_hunter/.bash_init" >> /home/treasure_hunter/.bashrc
mv ls_cat/"SCIST{I_am_really_nor" /home/treasure_hunter
mkdir -p /home/treasure_hunter/desert /home/treasure_hunter/tools /home/treasure_hunter/ocean/small_island /tmp/rainforest/monkey_house /opt/Black_Pearl/wine_barrel /opt/Black_Pearl/secret_place /opt/Black_Pearl/captains_cabin
chown -R treasure_hunter:treasure_hunter /home/treasure_hunter /tmp/rainforest /opt/Black_Pearl
mv cd/Treasure_Map1 /home/treasure_hunter/desert
mv cd/Treasure_Map2 /tmp/rainforest/monkey_house
mv cd/Treasure_Map3 /opt/Black_Pearl/secret_place
mv file_chmod_execute/compass /opt/Black_Pearl/captains_cabin
mv hidden_file/.aztecs_gold_coin /opt/Black_Pearl/captains_cabin
mv create_write_file/translator /home/treasure_hunter/tools
mv mkdir_mv/magic_engine /home/treasure_hunter/tools
mv find/maze /home/treasure_hunter/ocean/small_island

cd ..

mv Treasure_Hunters_Training Chinese_Parents_Challenge /home/treasure_hunter
rm -r Treasure_Hunt