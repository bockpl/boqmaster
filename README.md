# boqmaster
Nadzorca systemu kolejkowego klastra BlueOcean

docker run -dt --rm --name boqmaster -h $(hostname -f) -v /opt:/opt -v /home:/home -v /etc/aliases:/etc/aliases -v /etc/msmtprc:/etc/msmtprc -p 6444:6444 -p 8000:8000 -p 8081:8081  --net cluster_network --ip $(echo 10.0.0.$(hostname -i | cut -d "." -f4)) boqmaster

