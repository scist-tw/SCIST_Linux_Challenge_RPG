#!/usr/bin/env python3
import os
import string

def is_valid(cmd):
    whitelist = ['ls','cat']
    blacklist = ['!','"','#','$','%','&',"'",'(',')','*','+',',','-','/',';','<','=','>','?','@','\\','^','`','{','|','}','~']

    if not (cmd.split()[0] in whitelist):
        return False
    for char in cmd:
        if (char in string.ascii_uppercase) or (char in string.digits):
            return False
        if (char in blacklist):
            return False
    return True

while True:
    cmd = input('$ ').strip()
    if cmd == 'exit':
        break
    if not is_valid(cmd):
        print("Invalid Command !")
        continue
    os.system(cmd)
