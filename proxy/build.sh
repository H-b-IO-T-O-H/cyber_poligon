# create network
network_name='wgnet_1'

if [[ $(docker network ls | grep $network_name) = "" ]]
  then
    echo 'creating network' $network_name '...'
    docker network create --subnet 172.20.0.0/24 $network_name
fi


# ip route
container_name='web'
default_route_gateway='172.20.0.50'
docker compose exec --privileged $container_name ip route del default
echo 'setting up default route via'
docker compose exec --privileged $container_name ip route add default via $default_route_gateway