#!/bin/bash
echo "A memória RAM livre está em "
free | grep "Mem" | tr -s ' ' | cut -f4 -d' '
