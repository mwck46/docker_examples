#!/bin/bash

#
# This is the entry point of the docker container
#

#
# Activate corn job
cron

# 
# Run ssh deamon
/usr/sbin/sshd -D

#
# Run forever
tail -f /dev/null
