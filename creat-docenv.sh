#!/bin/bash
container_count=$1
for i in `seq $container_count`
do
  echo "========================================="
  echo "container creating siva$i"
  docker run -it -d siva$i --rm siva-img /bin/bash
done
echo "siva$i container created"
