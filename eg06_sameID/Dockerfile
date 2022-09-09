FROM ubuntu:20.04

RUN apt-get update && apt-get install -y openssh-server sudo

# Create user group with gid and name same as the host 
ARG HOST_GID
RUN groupadd -g ${HOST_GID} devp

# create user devp (pw: devp11)
ARG HOST_UID
RUN useradd -rm -d /home/devp -s /bin/bash -G sudo -u ${HOST_UID} -g ${HOST_GID} devp && \
 echo 'devp:devp11' | chpasswd && \
 adduser devp sudo

# change working dir
WORKDIR /home/devp

USER devp
ENV PATH=/home/devp/miniconda3/bin:${PATH}
ARG PATH=/home/devp/miniconda3/bin:${PATH}
USER root

RUN mkdir /var/run/sshd
RUN service ssh start
EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
