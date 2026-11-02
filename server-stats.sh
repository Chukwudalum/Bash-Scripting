#!/bin/bash

echo "STARTING"
echo "####################"

echo "CPU USAGE"
echo "####################"
top -bn1 | head -n 12

echo "####################"
echo "Memory USAGE"
echo "####################"
free -h

echo "####################"
echo "disk USAGE"
echo "####################"
df -h

echo "####################"
echo "Top 5 process (cpu)"
echo "####################"
ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | head -n 6

echo "####################"
echo "top 5 memory"
echo "####################"
ps -eo pid,user,%cpu,%mem,comm --sort=-%mem | head -n 6
