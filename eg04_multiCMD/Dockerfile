FROM ubuntu:20.04

#
# Install necessory packages
RUN apt-get update && apt-get install -y sudo cron \ 
  openssh-server openssh-client

#
# useradd, create a new user
# see https://linux.die.net/man/8/useradd
#
# -s, default shell
# -d, home directory
# -g, group name / id or the user's initial login group
# -G, supplementary groups
# -u, user id, 0-999 reserve for system account
# -U, create a group with the same name as the user
RUN useradd -rm -d /home/devp -s /bin/bash -G sudo -u 1000 -U devp &&\ 
  echo 'devp:devp11' | chpasswd && \
  adduser devp sudo

#
# Copy source code
COPY --chown=devp src /home/devp/src
RUN chmod +x /home/devp/src/main.sh

#
# Set ssh
RUN mkdir /var/run/sshd
RUN service ssh start
EXPOSE 22

#
# cron job
#
COPY --chown=devp src/devp-cron /etc/cron.d/devp-cron
## Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/devp-cron
## switch to another user, apply cron job
USER devp
RUN crontab /etc/cron.d/devp-cron
USER root

# 
# entry point
#
WORKDIR /home/devp
CMD ["./src/main.sh"]
