FROM ubuntu
MAINTAINER plisieck <plisieck@student42.fr>

RUN apt-get update
RUN apt-get -y install openssh-server

RUN mkdir /var/run/sshd
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
RUN sed -i 's/Port 22/Port 42/' /etc/ssh/sshd_config
RUN adduser --system plisieck
RUN mkdir -p /home/plisieck/.ssh

ADD    ./authorized_keys /home/plisieck/.ssh/
RUN sed -i s#/home/plisieck:/bin/false#/home/plisieck:/bin/bash# /etc/passwd

EXPOSE 42
CMD ["/usr/sbin/sshd", "-D"]
