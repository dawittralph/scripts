#!/bin/bash
# Script que captura o usuário logado, verifica o diretório de backup, compacta e salva na pasta home do usuário.
# Se o arquivo já existir, é criado um novo arquivo com um sequencial no final do nome.
pasta_home='/home/'$(who | cut -f1 -d ' ')
echo "Informe o diretório que contém os arquivos que deseja realizar o backup: " ; read DIR
nome_arquivo='backup-'$(date +%y-%m-%d)'.tar.bz2'
contador=1
if [ -e $pasta_home/$nome_arquivo ]
then
    nome_arquivo='backup-'$(date +%y-%m-%d)'-'$contador'.tar.bz2'
    while [ -e $pasta_home/$nome_arquivo ];
        do
            contador=`expr $contador + 1`
            nome_arquivo='backup-'$(date +%y-%m-%d)'-'$contador'.tar.bz2'
    done
fi
tar -cvjf $pasta_home/$nome_arquivo read $DIR
tamanho_arquivo=$(du -hs $pasta_home/$nome_arquivo)
echo "Foi criado o arquivo de $tamanho_arquivo"

