FROM tomcat
RUN apt-get update
RUN apt-get install -y procps
RUN apt-get install -y vim
RUN apt-get install -y openssh-server
RUN apt-get install -y sshpass
ENTRYPOINT service ssh start
COPY target/ola.war /usr/local/tomcat/webapps
ENTRYPOINT /usr/local/tomcat/bin/./startup.sh && /bin/bash
RUN apt-get install -y sudo
RUN useradd -m -d /home/siva -s /bin/bash siva
RUN echo "siva:siva" chpasswd
RUN usermod -aG sudo siva
RUN echo "siva ALL=(ALL:ALL)ALL" >> /etc/sudoers
