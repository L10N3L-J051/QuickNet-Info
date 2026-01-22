#!/bin/bash

# Menampilkan informasi jaringan sederhana
echo "-------------------------------"
echo "   QUICK NETWORK INFORMATION"
echo "-------------------------------"

# Mendapatkan IP Lokal
LOCAL_IP=$(hostname -I | awk '{print $1}')
echo "IP Lokal       : $LOCAL_IP"

# M(curl -s https://ipinfo.io/ip)
echo "IP Publik      : $PUBLIC_IP"

# Mendapatkan Default Gateway
GATEWAY=$(ip route | grep default | awk '{print $3}')
echo "Default Gateway: $GATEWAY"

echo "-------------------------------"
