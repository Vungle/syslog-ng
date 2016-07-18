# syslog-ng
syslog-ng configurable with env variables for graphite output.

`docker run -ti -p 514:514 -p 601:601 -e SYSLOG_ES_URL=search-as-postbacks-mgawfha4eun3oop75yrugaeubu.us-east-1.es.amazonaws.com --name syslog-ng vungle/syslog-ng:latest`
