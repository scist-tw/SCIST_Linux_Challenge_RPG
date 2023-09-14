#!/bin/bash

echo 'treasure_hunter:password' | chpasswd
groupadd -g 1337 "SCIST{GGGGGGIIIIIIDDDDDD}"
usermod -aG "SCIST{GGGGGGIIIIIIDDDDDD}" treasure_hunter
usermod -aG sudo treasure_hunter

###### Treasure Hunt ######

cd /home/treasure_hunter
mkdir -p desert tools ocean/small_island /tmp/rainforest/monkey_house /opt/Black_Pearl/wine_barrel /opt/Black_Pearl/secret_place /opt/Black_Pearl/captains_cabin
chown -R treasure_hunter:treasure_hunter . /tmp/rainforest /opt/Black_Pearl

# 1. Welcome
mv Treasure_Hunt/Welcome/Welcome .bashrc_append
echo -e "\n. /home/treasure_hunter/.bashrc_append" >> .bashrc

# 2. ls & cat
mv Treasure_Hunt/ls_cat/"SCIST{I_am_really_nor" .

# 3. cd
mv Treasure_Hunt/cd/Treasure_Map1 desert
mv Treasure_Hunt/cd/Treasure_Map2 /tmp/rainforest/monkey_house
mv Treasure_Hunt/cd/Treasure_Map3 /opt/Black_Pearl/secret_place

# 4. file & chmod & execute
mv Treasure_Hunt/file_chmod_execute/compass /opt/Black_Pearl/captains_cabin

# 5. hidden file
mv Treasure_Hunt/hidden_file/.aztecs_gold_coin /opt/Black_Pearl/captains_cabin

# 6. create & write file
mv Treasure_Hunt/create_write_file/translator tools

# 7. mkdir & mv 1
# 8. mkdir & mv 2
mv Treasure_Hunt/mkdir_mv/magic_engine tools

# 9. find
mv Treasure_Hunt/find/maze ocean/small_island

rm -r Treasure_Hunt

###### Treasure Hunt Finish ######