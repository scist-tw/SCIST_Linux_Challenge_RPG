FROM ubuntu:20.04

COPY src /root
RUN chmod +x /root/init.sh && /root/init.sh && rm /root/init.sh

EXPOSE 22

RUN service ssh start

CMD ["/usr/sbin/sshd","-D"]