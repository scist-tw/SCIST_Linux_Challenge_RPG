#!/bin/bash

version=2.0
architecture=$(uname -m)

if [[ $architecture == "aarch64" ]]; then
    docker build --platform linux/arm64 -t curiouslucifer/scist_linux_challenge_rpg:$version-challenge_box ./Challenge_Box
    docker build --platform linux/arm64 -t curiouslucifer/scist_linux_challenge_rpg:$version-web_service ./Web_Service
    docker build --platform linux/arm64 -t curiouslucifer/scist_linux_challenge_rpg:$version-ssh_service ./SSH_Service
elif [[ $architecture == "x86_64" ]]; then
    docker build --platform linux/amd64 -t curiouslucifer/scist_linux_challenge_rpg:$version-challenge_box ./Challenge_Box
    docker build --platform linux/amd64 -t curiouslucifer/scist_linux_challenge_rpg:$version-web_service ./Web_Service
    docker build --platform linux/amd64 -t curiouslucifer/scist_linux_challenge_rpg:$version-ssh_service ./SSH_Service
fi
