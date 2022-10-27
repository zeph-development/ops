FROM ubuntu:kinetic

RUN apt-get update && \
    apt-get install apt-utils -y

RUN apt-get install vim -y

RUN apt-get install telnet -y && \
    apt-get install curl -y && \
    apt-get install nmap -y

RUN apt-get install -y apache2 && \
    apt-get clean

EXPOSE 80
CMD apachectl -D FOREGROUND