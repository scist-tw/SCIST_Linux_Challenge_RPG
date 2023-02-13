FROM ubuntu:20.04

COPY src /root
RUN chmod +x /root/init.sh && /root/init.sh && rm /root/init.sh

USER treasure_hunter
WORKDIR /home/treasure_hunter
ENV TERM=xterm-256color

CMD ["ping", "127.0.0.1"]