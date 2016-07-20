#!/bin/bash
sed -i 's@SYSLOG_ES_URL@'$SYSLOG_ES_URL'@' /etc/syslog-ng/syslog-ng.conf
sed -i 's@SYSLOG_ES_PORT@'$SYSLOG_ES_PORT'@' /etc/syslog-ng/syslog-ng.conf
sed -i 's@SYSLOG_KAFKA_BROKER@'$SYSLOG_KAFKA_BROKER'@' /etc/syslog-ng/syslog-ng.conf
sed -i 's@SYSLOG_KAFKA_TOPIC@'$SYSLOG_KAFKA_TOPIC'@' /etc/syslog-ng/syslog-ng.conf
/usr/sbin/syslog-ng -F "$@"
