# boqmaster
Nadzorca systemu kolejkowego klastra BlueOcean

Zmienna srodowiskowa DEBUG=true wlacza opcje debuggowania w niektorych uruchamianych procesach min w monit.

Założenie: Przed uruchamianiem kontenera są już zamontowane prawidłowe katalogi /home i /opt na systemie bazowym.

docker run -dt --rm --name boqmaster -h $(hostname -f) -v /opt:/opt -v /home:/home -v /etc/aliases:/etc/aliases -v /etc/msmtprc:/etc/msmtprc -p 6444:6444 -p 8000:8000 -p 8081:8081  --net cluster_network --ip $(echo 10.0.0.$(hostname -i | cut -d "." -f4)) -e DEBUG=true boqmaster

