#!/bin/bash

vagrant destroy -f

ssh-keygen -f "/home/$USER/.ssh/known_hosts" -R "10.0.0.2"

ssh-keygen -f "/home/$USER/.ssh/known_hosts" -R "10.0.0.3"
