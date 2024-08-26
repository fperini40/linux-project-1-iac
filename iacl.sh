#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -G GRP_ADM -p "$(openssl passwd -6 Senha123)"
useradd maria -m -s /bin/bash -G GRP_ADM -p "$(openssl passwd -6 Senha123)"
useradd joao -m -s /bin/bash -G GRP_ADM -p "$(openssl passwd -6 Senha123)"

useradd debora -m -s /bin/bash -G GRP_VEN -p "$(openssl passwd -6 Senha123)"
useradd sebastiana -m -s /bin/bash -G GRP_VEN -p "$(openssl passwd -6 Senha123)"
useradd roberto -m -s /bin/bash -G GRP_VEN -p "$(openssl passwd -6 Senha123)"

useradd josefina -m -s /bin/bash -G GRP_SEC -p "$(openssl passwd -6 Senha123)"
useradd amanda -m -s /bin/bash -G GRP_SEC -p "$(openssl passwd -6 Senha123)"
useradd rogerio -m -s /bin/bash -G GRP_SEC -p "$(openssl passwd -6 Senha123)"

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."

