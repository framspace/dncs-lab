export DEBIAN_FRONTEND=noninteractive

#Network setup
sudo ip addr add 192.168.0.2/24 dev enp0s8
sudo ip link set dev enp0s8 up
sudo ip route add 192.168.0.0/21 via 192.168.0.1
