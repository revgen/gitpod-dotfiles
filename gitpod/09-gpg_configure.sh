#!/bin/bash
# clear out the gpg stuff if it exists
if [ 0 == 0 ]; then exit; fi

gpgconf --kill all
rm -f /home/gitpod/.gnupg/S.gpg-agent
