#!/bin/bash
container_count=$1
for i in `seq $container_count`
do
  echo "========================================="
  echo "container creating siva$i"
  docker run -it -d --name siva$i --rm jaisriram111/siva-img /bin/bash
done
echo "siva$i container created"

docker inspect -f {{.NetworkSettings.Networks.bridge.IPAddress}} `docker ps -q` > ip.txt
