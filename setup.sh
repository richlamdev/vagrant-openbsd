#!/bin/bash

# remove previous host keys, if any
ssh-keygen -f "/home/$USER/.ssh/known_hosts" -R "192.168.150.201"
ssh-keygen -f "/home/$USER/.ssh/known_hosts" -R "192.168.150.202"

# set root password to: password123.
# this is VERY insecure, obviously.  For testing purposes only!!
#
# Notes:
# 1) This is for ephemeral OpenBSD vagrant machines
# 2) This is not for production
# 3) Normal users should be provisioned access via SSH key, after python3 is installed on OpenBSD
# 4) The root user password should be much longer and complex!
ssh vagrant@192.168.150.201 -i ~/.vagrant.d/insecure_private_key 'echo -e "password123\npassword123" | sudo passwd root'
ssh vagrant@192.168.150.202 -i ~/.vagrant.d/insecure_private_key 'echo -e "password123\npassword123" | sudo passwd root'

exit 0
