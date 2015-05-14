docker build -t hello/world:v42 .
docker run -d -p 8080:80 -t --name web hello/world:v42
docker exec -it web /bin/bash
