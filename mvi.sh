#!/bin/sh

if [ -r ~/.vim/session/$1.session ]; then
vim "+source ~/.vim/session/$1.session" "+rviminfo ~/.vim/session/$1.session.viminfo"
else
vim "+let g:myfilename=\"$1\""
fi
