#!/bin/bash

version=2.0

docker manifest create curiouslucifer/scist_linux_challenge_rpg:$version-challenge_box curiouslucifer/scist_linux_challenge_rpg:$version-challenge_box-amd64 curiouslucifer/scist_linux_challenge_rpg:$version-challenge_box-arm64
docker manifest create curiouslucifer/scist_linux_challenge_rpg:$version-web_service curiouslucifer/scist_linux_challenge_rpg:$version-web_service-amd64 curiouslucifer/scist_linux_challenge_rpg:$version-web_service-arm64
docker manifest create curiouslucifer/scist_linux_challenge_rpg:$version-ssh_service curiouslucifer/scist_linux_challenge_rpg:$version-ssh_service-amd64 curiouslucifer/scist_linux_challenge_rpg:$version-ssh_service-arm64

docker manifest push curiouslucifer/scist_linux_challenge_rpg:$version-challenge_box
docker manifest push curiouslucifer/scist_linux_challenge_rpg:$version-web_service
docker manifest push curiouslucifer/scist_linux_challenge_rpg:$version-ssh_service
