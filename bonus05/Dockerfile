FROM ubuntu
RUN apt-get update && apt-get install -y docker.io
RUN ln -s /usr/bin/docker.io /usr/local/bin/docker
RUN mkdir -p /app
ADD . /app
WORKDIR /app
CMD ["bash"]
