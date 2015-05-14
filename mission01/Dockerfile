FROM ubuntu
RUN echo 'export PS1="plisieck@42born2code:/# "' >> ~/.bashrc
RUN adduser --system plisieck
RUN mkdir -p /home/plisieck/
RUN apt-get update; apt-get install -y nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
ADD html/index.html /usr/share/nginx/html/
CMD nginx
EXPOSE 22 42 80
