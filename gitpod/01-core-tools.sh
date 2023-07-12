#!/bin/bash
install_awscli() {
    if command -v aws &> /dev/null; then return 0; fi
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    rm -rf awscliv2.zip
    rm -rf ./aws
}

install_core_cli_tools() {
    if ! command -v mc &> /dev/null; then sudo apt install -y tig; fi
    if ! command -v mc &> /dev/null; then sudo apt install -y mc; fi
}

install_awscli &
install_core_cli_tools &
