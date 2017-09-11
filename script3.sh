#!/bin/bash
# wc - w : Informa a quantidade de palavras encontradas no arquivo informado.
# cut - Retorna o valor encontrado na doluna informada.
qtde_usuarios=$(sudo wc -w /etc/passwd | cut -f1 -d' ')
echo "A quantidade de usuários cadastrados no sistema é de : $qtde_usuarios"

