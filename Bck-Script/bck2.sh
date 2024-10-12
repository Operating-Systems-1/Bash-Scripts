#! /bin/bash

crontab -e

# 
#
# Result of executing the command:
# m h dom mon dow command
# 0 23 23 1-6 0 tar -zcf /var/home.tgz /tmp/

crontab -l