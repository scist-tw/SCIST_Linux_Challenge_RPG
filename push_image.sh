#!/bin/bash

version=2.0

docker push curiouslucifer/scist_linux_challenge_rpg:$version-challenge_box
docker push curiouslucifer/scist_linux_challenge_rpg:$version-web_service
docker push curiouslucifer/scist_linux_challenge_rpg:$version-ssh_service
