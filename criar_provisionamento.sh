#!/bin/bash

echo "Criando diretórios e atribuindo permissões..."
mkdir /publico
chmod 777 /publico
mkdir /adm
chmod 770 /adm
mkdir /ven
chmod 770 /ven
mkdir /sec
chmod 770 /sec

echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Atribuindo grupos aos seus respectivos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Criando os usuários..."
useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd -1 "123") -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria Silva" -m -s /bin/bash -p $(openssl passwd -1 "123") -G GRP_ADM
passwd maria -e

useradd joao_ -c "Joao Silva" -m -s /bin/bash -p $(openssl passwd -1 "123") -G GRP_ADM
passwd joao_ -e

useradd debora -c "Debora Gomes" -m -s /bin/bash -p $(openssl passwd -1 "123") -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Gomes" -m -s /bin/bash -p $(openssl passwd -1 "123") -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto Gomes" -m -s /bin/bash -p $(openssl passwd -1 "123") -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina Soares" -m -s /bin/bash -p $(openssl passwd -1 "123") -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Soares" -m -s /bin/bash -p $(openssl passwd -1 "123") -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio Soares" -m -s /bin/bash -p $(openssl passwd -1 "123") -G GRP_SEC
passwd rogerio -e

echo "Fim..."
