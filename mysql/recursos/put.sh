#!/bin/bash
# Llamamiento del .sql para creacion de la base de datos
mysql -u root -p$MYSQL_ROOT_PASSWORD < /tmp/sentencias.sql
# Bucle que extrae datos del txt y los escribe en el sql
echo "Se crea la tabla y se imprime el primer registro..."
echo "Iniciando rutina de autollenado..."
sleep 5
counter=0
while [ $counter -lt 50 ]; do
  let counter=counter+1
  name=$(nl /tmp/people.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $1}')
  lastname=$(nl /tmp/people.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $2}')
  age=$(shuf -i 10-33 -n 1)
  mysql -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE -e "INSERT INTO registro VALUES ($counter, '$name', '$lastname', $age)"
  echo "El individuo ,$counter, $name $lastname, de edad: , $age fue correctamente importado..."
  sleep 0.5
done