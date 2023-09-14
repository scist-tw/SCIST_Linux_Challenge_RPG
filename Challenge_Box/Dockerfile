FROM ubuntu:22.04 AS build

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -yq && \
    apt install gcc binutils nasm -yq 

COPY ./src/ /root/
RUN chmod +x /root/build.sh && /root/build.sh && rm /root/build.sh


FROM ubuntu:22.04 AS challenge_box

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -yq && \
    apt install gcc g++ binutils python3 python3-pip vim unrar zip unzip curl wget iputils-ping sudo sshpass -yq

RUN useradd -ms /bin/bash treasure_hunter

COPY --from=build /root/ /home/treasure_hunter/
RUN chmod +x /home/treasure_hunter/init.sh && /home/treasure_hunter/init.sh && rm /home/treasure_hunter/init.sh

USER treasure_hunter
WORKDIR /home/treasure_hunter
ENV TERM=xterm-color

CMD ["ping", "127.0.0.1"]