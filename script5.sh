#!/bin/bash
# Script que cria um usuário com base no nome e login informados, usando como senha o login.
echo "Informe o nome do usuário: " ; read USUARIO
echo "Informe o login do usuário: " ; read LOGIN
LOGINA=`cat /etc/passwd | grep $LOGIN | cut -f1 -d ':'`
if [ $LOGINA = $LOGIN ];
then
   echo "O login informado já existe no sistema."
else
   sudo useradd -d /home/$LOGIN -c "$USUARIO" $LOGIN -s /bin/bash
   echo "Usuário cadastrado com sucesso!"
fi
