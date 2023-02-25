containers=$(docker ps -a | cut -d' ' -f1 | sed '1d' )
printf "stop and remove:\n%s""$containers"
docker stop $(docker ps -a | cut -d' ' -f1 | sed '1d' )
docker rm $(docker ps -a | cut -d' ' -f1 | sed '1d' )