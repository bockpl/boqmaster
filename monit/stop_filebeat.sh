#!/bin/sh
#/usr/sbin/nslcd -d
#/usr/sbin/nslcd -d
#/usr/bin/kill 
/usr/bin/kill -9 $(monit procmatch .*filebeat.*path\.data.* | grep "/usr/share/filebeat/bin/filebeat" | awk {'print $2'})
#for i in `ps aux | grep share | grep filebeat | awk '{ print $2 }'` do /usr/bin/kill -9 $1 ; done

