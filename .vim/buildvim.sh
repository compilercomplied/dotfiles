#!/bin/bash


git clone https://github.com/vim/vim.git
cd vim

p2=$(ls /usr/lib/python2.7/ | grep ^config)
p3=$(ls /usr/lib/python3.5/ | grep ^config)

# Needed python-dev && python3-dev

./configure --with-features=huge \
            --enable-luainterp=yes \
            --enable-perlinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/$p3 \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/$p2 \
            --enable-rubyinterp=yes \
            --enable-multibyte


make VIMRUNTIMEDIR=/usr/local/share/vim/vim80/
sudo make install
cd .. && rm -rf vim

# Check this issue if python incompatibilities persist
# https://github.com/Valloric/YouCompleteMe/issues/1907#issuecomment-244038309
#sudo rm /usr/local/bin/vim && sudo ln -s /usr/bin/vim /usr/local/bin/vim
