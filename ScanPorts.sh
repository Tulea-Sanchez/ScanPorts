#!/bin/bash

# ./ScanPorts.sh <ip-address>

if [ $1 ]; then
  ip_address=$1
  for i in $(seq 1 65535); do
    timeout 1 bash -c "echo '' > /dev/tcp/$ip_address/$i" 2>/dev/null && echo "[*] Puerto $i ... Abierto" & 
  done; wait
else
  echo -e "\n[*] Uso: ./ScanPorts.sh <ip-address>\n"
  exit 1
fi


