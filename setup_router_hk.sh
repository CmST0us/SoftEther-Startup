# 1.2.3.4/32
REMOTE_ADDRESS_AND_MASK=""
# 192.168.2.1
LOCAL_GATEWAY=""
# 192.168.30.1
LOCAL_TUN_ADDRESS=""

sudo ./vpnclient start
sudo dhclient vpn_veth1
sudo ip route add default via $LOCAL_TUN_ADDRESS
sudo ip route add $REMOTE_ADDRESS via $LOCAL_GATEWAY
sudo ip route del default via $LOCAL_GATEWAY

