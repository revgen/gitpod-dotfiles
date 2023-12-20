#!/bin/bash
# ----------------------------------------------------------------------------
install_tool() {
    command="${1}"
    package="${2:-"${command}"}"
    if ! command -v "${command}" &> /dev/null; then sudo apt install -y "${package}"; fi
}
install_awscli() {
    if command -v aws &> /dev/null; then return 0; fi
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    rm -rf awscliv2.zip
    rm -rf ./aws
}

# ----------------------------------------------------------------------------
install_awscli &
install_tool tig
install_tool mc
install_tool shellcheck

(
    pip install ruff
    pip install python-dotenv
) &
