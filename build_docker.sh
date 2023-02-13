#!/bin/bash

architecture=$(uname -m)

docker build -t curiouslucifer/scist_linux_challenge_rpg:1.0-challenge_box-$architecture ./Docker_Build/Challenge_Box
docker build -t curiouslucifer/scist_linux_challenge_rpg:1.0-web_service-$architecture ./Docker_Build/Web_Service
docker build -t curiouslucifer/scist_linux_challenge_rpg:1.0-ssh_service-$architecture ./Docker_Build/SSH_Service
