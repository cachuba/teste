#!/bin/bash

# Variáveis
data=$(date +%y_%m_%d-%H:%M::%S)
senha=$(cat /teste/senha)

# Execute a query no servidor MySQL remoto e salve o arquivo
mysql -u root -p$senha moondragoon_dev < /teste/arquivo2.sql
mysql -u root -p$senha moondragoon_dev < /teste/arquivo3.sql
mv /var/lib/mysql-files/teste.txt /teste/arquivos/teste_$data.txt
chown nobody:nobody /teste/arquivos/teste_$data.txt
echo "###################"
echo "# Campo alterado: #"
echo "###################"
cat /teste/arquivos/teste_$data.txt
exit 0
