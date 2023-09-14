#!/bin/bash

version=2.0
architecture=$(uname -m)

if [[ $architecture == "aarch64" ]]; then
    docker build --platform linux/arm64 -t curiouslucifer/scist_linux_challenge_rpg:$version-challenge_box-arm64 ./Challenge_Box
    docker build --platform linux/arm64 -t curiouslucifer/scist_linux_challenge_rpg:$version-web_service-arm64 ./Web_Service
    docker build --platform linux/arm64 -t curiouslucifer/scist_linux_challenge_rpg:$version-ssh_service-arm64 ./SSH_Service
elif [[ $architecture == "x86_64" ]]; then
    docker build --platform linux/amd64 -t curiouslucifer/scist_linux_challenge_rpg:$version-challenge_box-amd64 ./Challenge_Box
    docker build --platform linux/amd64 -t curiouslucifer/scist_linux_challenge_rpg:$version-web_service-amd64 ./Web_Service
    docker build --platform linux/amd64 -t curiouslucifer/scist_linux_challenge_rpg:$version-ssh_service-amd64 ./SSH_Service
fi
