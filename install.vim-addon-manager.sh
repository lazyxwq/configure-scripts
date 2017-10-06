#!/bin/bash

sudo mkdir -p /mnt/share/win-share/git
cd /mnt/share/win-share/git
sudo apt update
sudo apt install ctags
sudo git clone --recursive git://github.com/MarcWeber/vim-addon-manager.git

echo -e '\n\n\
"add for VAM
fun SetupVAM()
        set runtimepath+=/mnt/share/win-share/git/vim-addon-manager
        " commenting try .. endtry because trace is lost if you use it.
        " There should be no exception anyway
        " try
        call vam#ActivateAddons(['taglist'], {'auto_install' : 0})
        "上一句是自动开启taglist，没有就自动安装
        "call vam#ActivateAddons(['p1', 'p2'], {'force_loading_plugins_now' : 1})
        " pluginA could be github:YourName see vam#install#RewriteName()
        " catch /.*/
        "  echoe v:exception
        " endtry
endf
call SetupVAM()
" experimental: run after gui has been started (gvim) [3]
" option1:  au VimEnter * call SetupVAM()
" option2:  au GUIEnter * call SetupVAM()
" See BUGS sections below [*]
\n\n' >> /etc/vim/vimrc

echo "安装完毕"
vim
