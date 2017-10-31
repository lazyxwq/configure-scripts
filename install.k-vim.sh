#!/bin/bash

sudo apt update && sudo apt install git ctags ag -y

git clone https://github.com/wklken/k-vim.git ~/.k-vim

cd ~/.k-vim

sh -x install.sh
