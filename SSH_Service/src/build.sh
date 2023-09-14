#!/bin/bash

cd /root/

gcc -s neo/red_pill.c -o neo/red_pill
rm neo/red_pill.c
chmod -x neo/red_pill