#!/bin/bash
echo "Informe o primeiro número "
read NUM1
echo "Informe o segundo número "
read NUM2
test "$NUM1" -lt "$NUM2" && echo "$NUM1 é menor que $NUM2"
test "$NUM1" -gt "$NUM2" && echo "$NUM1 é maior que $NUM2"
test "$NUM1" -eq "$NUM2" && echo "$NUM1 é igual $NUM2"
echo

