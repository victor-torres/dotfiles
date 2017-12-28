#!/bin/sh
mkdir -p ~/.ssh
sudo mkdir -p /root/.ssh

lpass show --name id_rsa --notes > ~/.ssh/id_rsa
lpass show --name id_rsa.pub --notes > ~/.ssh/id_rsa.pub

cat ~/.ssh/id_rsa.pub | sudo tee /root/.ssh/authorized_keys
