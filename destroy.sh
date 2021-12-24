#!/bin/bash

vagrant destroy -f

ssh-keygen -f "/home/$USER/.ssh/known_hosts" -R "japan.test"

ssh-keygen -f "/home/$USER/.ssh/known_hosts" -R "india.test"
