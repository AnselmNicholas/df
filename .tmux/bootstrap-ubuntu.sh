# https://gist.github.com/P7h/91e14096374075f5316e
# Steps to build and install tmux from source on Ubuntu.
# Takes < 25 seconds on EC2 env [even on a low-end config instance].
VERSION=2.8
sudo apt-get -y remove tmux
sudo apt-get -y install build-essential bc wget tar libevent-dev libncurses-dev
wget https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz
tar xf tmux-${VERSION}.tar.gz
rm -f tmux-${VERSION}.tar.gz
cd tmux-${VERSION}
./configure
make
sudo make install
cd -
rm -rf tmux-${VERSION}
#sudo rm -rf /usr/local/src/tmux-*
#sudo mv tmux-${VERSION} /usr/local/src

## Logout and login to the shell again and run.
## tmux -V
