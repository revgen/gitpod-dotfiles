#!/bin/bash
# #############################################################################
# Special bootstrap script to use inside the Gitpod.io service to initialize
# custom environment: install tools, change settings, etc.
#
# To use this script:
# 1. Open https://gitpod.io/user/preferences
# 2. Put "https://github.com/revgen/gitpod-dotfiles" in the "Dotfiles - Repository URL"
#
# #############################################################################

if [ -z "${GITPOD_WORKSPACE_ID}" ]; then
    echo "Error: the script is setup environemnt for Gitpod Workspace"
    echo "Looks like it is not a Gitpod Workspace environment. Skip."
    exit 1
fi

for script in ~/.dotfiles/gitpod/*; do
  bash "${script}"
done
