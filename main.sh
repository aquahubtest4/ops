#!/bin/bash

# Start apache
source /etc/apache2/envvars
apachectl -f /etc/apache2/apache2.conf

# Start our fake smtp server
python -m smtpd -n -c DebuggingServer localhost:25
