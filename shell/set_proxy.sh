export PROXY_IP="192.168.1.24"
echo "set proxy ip $PROXY_IP"
export https_proxy="http://$PROXY_IP:7890" http_proxy="http://$PROXY_IP:7890" all_proxy="socks5://$PROXY_IP:7891"
