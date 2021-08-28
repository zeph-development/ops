#!/bin/bash

# Install ssmtp and configure /etc/ssmtp/ssmtp.conf
# Install mailx cli
# cmd: mail -s 'ThinkPad alert' codesquaddev@gmail.com <<< "Mail sent at date: "$(date)

# Params
# $1 - Mail subject
# $1 - Notification title
# $2 - Notification type
# $3 - Notification message

user=$(whoami)
body="
Notification: ${2:-notification_test}
Type: ${3:-notification_type}
Message: ${4:-message_test}
User: $user
Date: $(date)"

mail -s "${1:-subject_test}" codesquaddev@gmail.com <<< "$body"
