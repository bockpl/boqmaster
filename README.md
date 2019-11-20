# boqmaster
Nadzorca systemu kolejkowego klastra BlueOcean

docker run -dt --rm --name boqmaster -h $(hostname -f) --device /dev/fuse -v /etc/aliases:/etc/aliases -v /etc/msmtprc:/etc/msmtprc --privileged -p 6444:6444 --net cluster_network --ip $(echo 10.0.0.$(hostname -i | cut -d "." -f4)) qmaster
