#!/bin/bash
set -e

git clone https://github.com/Artemmkin/reddit.git
cd reddit
source ~/.rvm/scripts/rvm
bundle install
sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl enable puma.service
sudo systemctl start puma.service
