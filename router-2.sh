export DEBIAN_FRONTEND=noninteractive

#Network setup
sudo sysctl -w net.ipv4.ip_forward=1
sudo ip addr add 192.168.1.2/30 dev enp0s9
sudo ip link set dev enp0s9 up
sudo ip addr add 192.168.4.1/24 dev enp0s8
sudo ip link set dev enp0s8 up
sudo ip route add 192.168.0.0/21 via 192.168.1.1
sudo ip route add 192.168.4.0/24 via 192.168.1.2


