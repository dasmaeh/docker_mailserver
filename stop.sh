#!/bin/bash
/usr/bin/docker-compose -f /docker/mailserver/docker-compose.yml stop
/usr/bin/docker-compose -f /docker/mailserver/docker-compose.yml rm -f
