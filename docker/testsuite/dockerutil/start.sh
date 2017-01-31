#!/bin/bash

cd /automated
bundle install

pwd
ls -la

USERNAME="USERNAME=$1"
PASSWORD="PASSWORD=$2"
FEATURE="$(echo $3 | sed 's/\,/ /g')"

bundle exec cucumber $USERNAME $PASSWORD $FEATURE
