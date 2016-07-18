#!/bin/bash
sed -i 's@SYSLOG_ES_URL@'$SYSLOG_ES_URL'@' /etc/syslog-ng/syslog-ng.conf
sed -i 's@SYSLOG_ES_PORT@'$SYSLOG_ES_PORT'@' /etc/syslog-ng/syslog-ng.conf
/usr/sbin/syslog-ng -F "$@"
