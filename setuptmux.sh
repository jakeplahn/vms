#!/bin/bash    
sudo apt-get update
wget -O tmux.tar.gz https://github.com/tmux/tmux/releases/download/$1/tmux-$1.tar.gz
sudo apt-get install build-essential libevent-dev libncurses-dev
tar -zxvf tmux.tar.gz
cd tmux-$1
./configure
make
sudo make install
tmux -V
cp ../.tmux.conf ~/
