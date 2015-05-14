cat ~/.ssh/id_boot2docker.pub > authorized_keys
docker build -t my_ssh .
docker run -d -P --name OpenSSH my_ssh
