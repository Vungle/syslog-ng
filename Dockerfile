FROM balabit/syslog-ng
ADD ./*.conf /etc/syslog-ng/
RUN mkdir -p /opt/syslog-ng/lib/syslog-ng/java-modules/
ADD modules/* /opt/syslog-ng/lib/syslog-ng/java-modules/
ADD run.sh /etc/syslog/run.sh
RUN chmod +x /etc/syslog/run.sh
WORKDIR /etc/syslog/
RUN apt-get update && apt-get install -y wget && \ 
  wget http://apache.lauf-forum.at/kafka/0.10.0.0/kafka_2.11-0.10.0.0.tgz && \
  tar -zxvf kafka_2.11-0.10.0.0.tgz && \
  mkdir -p /opt/kafka/lib/ && \
  cp kafka_2.11-0.10.0.0/libs/* /opt/kafka/lib/
  
ENTRYPOINT ["/etc/syslog/run.sh"]
