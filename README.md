# boqmaster
Nadzorca systemu kolejkowego klastra BlueOcean

Zmienna srodowiskowa DEBUG=true wlacza opcje debuggowania w niektorych uruchamianych procesach min w monit.

Założenie: Przed uruchamianiem kontenera są już zamontowane prawidłowe katalogi /home i /opt na systemie bazowym.

JUPYTERHUB_EXT_PORT=8000
JUPYTERHUB_INT_PORT=8081

docker run -dt --rm --name boqmaster -h $(hostname -f) -v /opt:/opt -v /home:/home -v /etc/aliases:/etc/aliases -v /etc/msmtprc:/etc/msmtprc -p 6444:6444 -p ${JUPYTERHUB_EXT_PORT}:${JUPYTERHUB_EXT_PORT} -p ${JUPYTERHUB_INT_PORT}:${JUPYTERHUB_INT_PORT}  --net cluster_network --ip $(echo 10.0.0.$(hostname -i | cut -d "." -f4)) -e DEBUG=true boqmaster

