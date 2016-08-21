#!/usr/bin/zsh
# Prints download/upload transfer rate at the specified interface
# Quite common script; available all over internet
# ~ ecthiender ~

usage() {
  echo "Usage:  "
  echo "$basename <network-interface> : Get the download/upload transfer rate"
  echo "                         at the specified interface"
  echo "$basename --help : Show this help"
  echo "-------"
}

run() {
  RX1=$(</sys/class/net/"$iface"/statistics/rx_bytes)
  TX1=$(</sys/class/net/"$iface"/statistics/tx_bytes)
  sleep 2
  RX2=$(</sys/class/net/"$iface"/statistics/rx_bytes)
  TX2=$(</sys/class/net/"$iface"/statistics/tx_bytes)
  RXDIFF=$(echo $((RX2 - RX1)))
  TXDIFF=$(echo $((TX2 - TX1)))

  echo -e "↓ $((RXDIFF / 1024 / 2))K/s ↑ $((TXDIFF / 1024 / 2))K/s"
}

basename=$0

if [ "$1" = "--help" ]; then
  usage
  exit 0;
elif [ -z "$1" ]; then
  echo "Please specify a network interface."
  usage
  exit 1;
else
  iface=$1
  run
fi

