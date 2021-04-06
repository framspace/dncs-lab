export DEBIAN_FRONTEND=noninteractive
# Startup commands go here
#Network set up
sudo ip a add 192.168.3.2/23 dev enp0s8
sudo ip link set dev enp0s8 up
sudo ip route add 192.168.0.0/21 via 192.168.3.1