#!/bin/bash

version=2.0
architecture=$(uname -m)

if [[ $architecture == "aarch64" ]]; then
    docker push curiouslucifer/scist_linux_challenge_rpg:$version-challenge_box-arm64
    docker push curiouslucifer/scist_linux_challenge_rpg:$version-web_service-arm64
    docker push curiouslucifer/scist_linux_challenge_rpg:$version-ssh_service-arm64
elif [[ $architecture == "x86_64" ]]; then
    docker push curiouslucifer/scist_linux_challenge_rpg:$version-challenge_box-amd64
    docker push curiouslucifer/scist_linux_challenge_rpg:$version-web_service-amd64
    docker push curiouslucifer/scist_linux_challenge_rpg:$version-ssh_service-amd64
fi