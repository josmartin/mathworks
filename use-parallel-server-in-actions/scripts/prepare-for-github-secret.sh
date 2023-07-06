#!/bin/bash

FILE=$1

# Construct a new key that should be inserted into a github secret to decode the file
KEY=`tr -dc A-Za-z0-9 </dev/random | head -c 64`

echo "The secret key used to encrypt ${FILE} is :"
echo ${KEY}
echo

# Use key to symmetric key encrypt the file with output in ascii form
gpg --passphrase ${KEY} --symmetric --batch --yes --pinentry-mode loopback --armor -o "${FILE}.gpg" "${FILE}"

