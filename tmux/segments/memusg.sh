#!/bin/bash

# this prints the used memory in %
echo "$(free | sed -n '2p' | awk '{print 100*($3/$2)}')%"

# this prints the free memory in %
#echo "$(free | sed -n '2p' | awk '{print 100*($6/$2)}')%"
