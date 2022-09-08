FROM ubuntu:20.04

RUN apt-get update && apt-get install -y openssh-server sudo

# create user devp (pw: devp11)
# For some reason, it can't ssh to root directly
RUN useradd -rm -d /home/devp -s /bin/bash -U -G sudo -u 1000 devp && \
 echo 'devp:devp11' | chpasswd && \
 adduser devp sudo

# change working dir
WORKDIR /home/devp

USER devp
# Install python packages
RUN wget \
    https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && mkdir ~/.conda \
    && bash Miniconda3-latest-Linux-x86_64.sh -b \
    && rm -f Miniconda3-latest-Linux-x86_64.sh 
    
ARG PATH=/home/devp/miniconda3/bin:${PATH}

# [FAIL] Can override $PATH for root but fail to override for devp
ENV PATH=/home/devp/miniconda3/bin:${PATH}
# [OK] Explicitly set .bash_profile can override $PATH for devp
RUN echo 'export PATH=/home/devp/miniconda3/bin:${PATH}' >>~/.bash_profile
USER root

RUN mkdir /var/run/sshd
RUN service ssh start
EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
