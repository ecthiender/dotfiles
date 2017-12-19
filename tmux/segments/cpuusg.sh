#!/bin/bash

# https://unix.stackexchange.com/questions/152988/how-to-get-cpu-usage-for-every-core-with-a-bash-script-using-standard-nix-tools
# Calculate average cpu usage per core.
#      user  nice system   idle iowait irq softirq steal guest guest_nice
# cpu0 30404 2382   6277 554768   6061   0      19    0      0          0

A=($(sed -n '2,5p' /proc/stat))
# user         + nice     + system   + idle
B0=$((${A[1]}  + ${A[2]}  + ${A[3]}  + ${A[4]}))
B1=$((${A[12]} + ${A[13]} + ${A[14]} + ${A[15]}))
B2=$((${A[23]} + ${A[24]} + ${A[25]} + ${A[26]}))
B3=$((${A[34]} + ${A[35]} + ${A[36]} + ${A[37]}))
sleep 0.2
# user         + nice     + system   + idle
C=($(sed -n '2,5p' /proc/stat))
D0=$((${C[1]}  + ${C[2]}  + ${C[3]}  + ${C[4]}))
D1=$((${C[12]} + ${C[13]} + ${C[14]} + ${C[15]}))
D2=$((${C[23]} + ${C[24]} + ${C[25]} + ${C[26]}))
D3=$((${C[34]} + ${C[35]} + ${C[36]} + ${C[37]}))
# cpu usage per core
E0=$((100 * (B0 - D0 - ${A[4]}  + ${C[4]})  / (B0 - D0)))
E1=$((100 * (B1 - D1 - ${A[15]} + ${C[15]}) / (B1 - D1)))
E2=$((100 * (B2 - D2 - ${A[26]} + ${C[26]}) / (B2 - D2)))
E3=$((100 * (B3 - D3 - ${A[37]} + ${C[37]}) / (B3 - D3)))
echo "$E0 $E1 $E2 $E3"

# older top based solution
# echo $(top -bn 2 | grep -F '%Cpu' | tail -n 4 | awk '{print $4}' | awk -F "[" '{print $1}')
