#!/bin/bash
MYENV_REPO=https://raw.githubusercontent.com/revgen/myenv

wget -O ~/.gitconfig    "${MYENV_REPO}/master/home/.gitconfig"
wget -O ~/.pylintrc     "${MYENV_REPO}/master/home/.pylintrc"
wget -O ~/.vimrc        "${MYENV_REPO}/master/home/.vimrc"

echo -e "
# Custom user settings
alias tig='tig --all'
alias ws='cd "${GITPOD_REPO_ROOT:-"${HOME}"}" && pwd'
alias l='ll'
alias lt='ls -ATlh'
" > "${HOME}/.bashrc.d/99-user"
