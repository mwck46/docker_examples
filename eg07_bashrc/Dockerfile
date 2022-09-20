# Set .bash_profile
# Why? When ssh to the docker (although it is not a good practise), .bashrc is not loaded
# Therefore, environment path and bash settings is not loaded

FROM ubuntu:20.04

RUN apt-get install -y sudo cron \ 
  openssh-server openssh-client \
  wget ksh rsync zip git wget ksh rsync zip \
  gcc mpich libgd3 libpng-dev libgd-dev build-essential iputils-ping make python3-pip \ 
  vim


# echo multiple lines to .bash_profile with 1 RUN
RUN echo $' \n\
export PATH=/home/aswirls/miniconda3/bin:${PATH} \n\
if [ -f ~/.bashrc ]; then \n\
  . ~/.bashrc \n\
fi \n\
' >>~/.bash_profile


CMD ["/usr/sbin/sshd","-D"]
