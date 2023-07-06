#!/bin/bash

KEY=$1
FILE=$2

gpg -q --passphrase ${KEY} --decrypt --batch --yes --pinentry-mode loopback -o "${FILE}" "${FILE}.gpg"