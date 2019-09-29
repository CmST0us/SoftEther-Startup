# 192.168.30.1
LOCAL_TUN_ADDRESS=""
# 192.168.2.1
LOCAL_GATEWAY=""
sudo ./vpnclient stop
sudo ip route delete default via $LOCAL_TUN_ADDRESS
sudo ip route add default via $LOCAL_GATEWAY

