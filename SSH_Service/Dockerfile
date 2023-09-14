FROM ubuntu:22.04 AS build

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -yq && \
    apt install gcc -yq 

COPY ./src/ /root
RUN chmod +x /root/build.sh && /root/build.sh && rm /root/build.sh


FROM ubuntu:22.04 AS ssh_service

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -yq && \
    apt install openssh-server -yq 

COPY --from=build /root/ /root/
RUN chmod +x /root/init.sh && /root/init.sh && rm /root/init.sh

EXPOSE 22
RUN service ssh start
CMD ["/usr/sbin/sshd", "-D"]