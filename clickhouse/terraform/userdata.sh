#!/bin/bash

apt-get update
apt install docker.io -y
usermod -aG docker ubuntu

apt-get install python3-docker -y
