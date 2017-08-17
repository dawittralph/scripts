#!/bin/bash
echo "Informe o número "
read NUM
echo
while test "$NUM" -ge 0
do
	echo -n "$NUM "
	(( NUM-- ))
done
echo 
