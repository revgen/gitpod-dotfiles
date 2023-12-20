#!/bin/bash
MYENV_REPO=https://raw.githubusercontent.com/revgen/myenv
mkdir -p ${HOME}/.local/bin
wget -O ${HOME}/.pylintrc     "${MYENV_REPO}/master/home/.pylintrc"
wget -O ${HOME}/.ruff.toml    "${MYENV_REPO}/master/home/.ruff.toml"
wget -O ${HOME}/.vimrc        "${MYENV_REPO}/master/home/.vimrc"
wget -O ${HOME}/.gitconfig    "${MYENV_REPO}/master/home/.gitconfig"
wget -O ${HOME}/.local/bin    "${MYENV_REPO}/master/home/.gitconfig"
if [ ! -f "${HOME}/.gitconfig.local" ]; then
    wget -O ${HOME}/.gitconfig.local "${MYENV_REPO}/master/home/.gitconfig.local"
fi

echo -e "
# Custom user settings
export PATH=\"${HOME}/.local/bin:${PATH}\"
alias tig='tig --all'
alias ws='cd "${GITPOD_REPO_ROOT:-"${HOME}"}" && pwd'
alias l='ll'
alias lt='ls -ATlh'
alias shlint='shellcheck -o all'
" > "${HOME}/.bashrc.d/99-user"
