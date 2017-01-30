#!/bin/bash

cd /automated
bundle install

USERNAME="USERNAME=$1"
PASSWORD="PASSWORD=$2"

bundle exec cucumber $USERNAME $PASSWORD features/newuser.feature features/login.feature features/quote.feature
