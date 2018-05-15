#!/bin/bash
# Change working dir to current dir:
cd "$(dirname "$0")"

/usr/bin/docker-compose -f /docker/mailserver/docker-compose.yml up -d

/usr/local/bin/watchexec --exts "pem" --watch /docker/ssl/mail.dasmaeh.de/ "/usr/bin/docker-compose -f /docker/mailserver/docker-compose.yml restart mail"
