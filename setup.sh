cd /usr/src/app

apt-get update
apt-get install build-essential -y
apt-get install librabbitmq-dev -y
apt-get install vim -y

# rm send receive
g++ -o send send.cpp -lrabbitmq
g++ -o receive receive.cpp -lrabbitmq
# ./send
# ./receive

