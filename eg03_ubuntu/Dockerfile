FROM ubuntu:20.04

RUN apt-get update && apt-get install -y openssh-server

# create user dev (pw: dev11)
# For some reason, it can't ssh to root directly
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test 
RUN echo 'dev:dev11' | chpasswd

RUN mkdir /var/run/sshd
RUN service ssh start
EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
