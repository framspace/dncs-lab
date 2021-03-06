export DEBIAN_FRONTEND=noninteractive

#Docker setup 
sudo apt-get update
sudo apt -y install docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull dustnic82/nginx-test
sudo docker run -p 80:80 -d dustnic82/nginx-test
#Network setup
sudo ip addr add 192.168.4.2/24 dev enp0s8
sudo ip link set dev enp0s8 up
sudo ip route add 192.168.0.0/21 via 192.168.4.1
