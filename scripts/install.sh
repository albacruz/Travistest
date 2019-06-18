#!/bin/bash

echo "Importing SSH Key"

echo "REMOTE_USER = ${REMOTE_USER}"
echo "REMOTE_HOST = ${REMOTE_HOST}"

openssl aes-256-cbc -K $encrypted_93060368a9ef_key -iv $encrypted_93060368a9ef_iv -in deployTravis.enc -out deployTravis -d

eval "$(ssh-agent -s)"

chmod 600 deployTravis

ssh-add deployTravis