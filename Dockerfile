FROM bockpl/bocompute:develop
#FROM lokalnerepo

# Dodanie i uruchomienie scenariuszy ansible, tymczasowo tylko na czas budowy
ADD ansible /ansible

RUN yum -y install yum-plugin-remove-with-leaves && \
    yum -y install ansible && \
    ansible-playbook /ansible/Playbooks/Install_all.yml --connection=local --extra-vars "var_host=127.0.0.1" && \
    yum -y remove ansible --remove-leaves && \
    rm -rf /ansible

# SGE
ADD soge/sgemaster.blueocean-v15 /etc/init.d/
ADD monit/* /etc/monit.d/

CMD ["/bin/bash","-c","/start.sh"]
