#!/bin/bash
echo "O uso da partição '/home' está em "
df | grep "/dev/sda6" | tr -s ' ' | cut -f5 -d' '
