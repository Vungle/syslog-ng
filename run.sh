#!/bin/bash
sed -i 's@SYSLOG_ES_URL@'$SYSLOG_ES_URL'@' /etc/syslog-ng/es.conf
/usr/sbin/syslog-ng -F "$@"
