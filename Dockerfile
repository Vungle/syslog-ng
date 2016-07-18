FROM balabit/syslog-ng
ADD ./*.conf /etc/syslog-ng/
ADD run.sh /etc/syslog/run.sh
RUN chmod +x /etc/syslog/run.sh
ENTRYPOINT ["/etc/syslog/run.sh"]
