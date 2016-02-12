#!/bin/bash
# make user
# Install pyenv, ansible

useradd -m shunsuke
pacman -S python2 wget git
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile

