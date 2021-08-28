#!/bin/bash

# Install ssmtp and configure /etc/ssmtp/ssmtp.conf
# Install mailx cli
# cmd: mail -s 'ThinkPad alert' codesquaddev@gmail.com <<< "Mail sent at date: "$(date)

# Params
# $1 - Mail subject
# $1 - Notification title
# $2 - Notification type
# $3 - Notification message

public_ip=$(curl ipecho.net/plain; echo)
body="
Type: Internet connection 
User: $(whoami)
Date: $(date)
Message: public ip: $public_ip"

mail -s "${1:-subject_test}" codesquaddev@gmail.com <<< "$body"
