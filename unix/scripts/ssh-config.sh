#!/bin/sh
mkdir -p ~/.ssh
sudo mkdir -p /root/.ssh

lpass show --name "SSH Private Key" --notes > ~/.ssh/id_rsa
lpass show --name "SSH Public Key" --notes > ~/.ssh/id_rsa.pub

cat ~/.ssh/id_rsa.pub | sudo tee /root/.ssh/authorized_keys
