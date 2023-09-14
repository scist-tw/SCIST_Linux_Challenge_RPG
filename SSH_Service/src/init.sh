#!/bin/bash

useradd -ms /bin/bash neo
echo 'neo:I_w1ll_n07_usE_tHi5_pAssw0rd' | chpasswd
useradd -ms /bin/bash morpheus
echo 'morpheus:You_dont_know_what_you_dont_know' | chpasswd
useradd -ms /bin/bash smith
echo 'smith:Th1s_i5_Smiths_p4ssWorD' | chpasswd

mv /root/neo/* /home/neo && chown -R neo:neo /home/neo
mv /root/morpheus/* /home/morpheus && chown -R morpheus:morpheus /home/morpheus
mv /root/smith/* /home/smith && chown -R smith:smith /home/smith

rm -r /root/neo /root/morpheus /root/smith

chmod -R 750 /home/morpheus && chsh -s /home/morpheus/shell.py morpheus
chmod -R 750 /home/smith && chsh -s /home/smith/shell.py smith
