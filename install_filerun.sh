#!/bin/bash

# Descomprimir el fichero con todos los ficheros necesarios.
echo "Iniciando la magia..."
echo "Descomprimiendo filerun_btf.tar.gz"
tar -xzvf filerun_btf.tar.gz

# Descomprimir filerun.tar.gz en /mnt/user/appdata/filerun/
echo "Descomprimiendo filerun.tar.gz en /mnt/user/appdata/filerun/"
mkdir -p /mnt/user/appdata/filerun/
tar -xzvf filerun.tar.gz -C /mnt/user/appdata/
rm filerun.tar.gz
echo "Fichero filerun.tar.gz eliminado."

# Descomprimir filerun_db.tar.gz en /mnt/user/appdata/filerun_db/
echo "Descomprimiendo filerun_db.tar.gz en /mnt/user/appdata/filerun_db/"
mkdir -p /mnt/user/appdata/filerun_db/
tar -xzvf filerun_db.tar.gz -C /mnt/user/appdata/
rm filerun_db.tar.gz
echo "Fichero filerun_db.tar.gz eliminado."

# Copiar my-filerun.xml a /boot/config/plugins/dockerMan/templates-user/
echo "Copiando my-filerun.xml a /boot/config/plugins/dockerMan/templates-user/"
cp my-filerun.xml /boot/config/plugins/dockerMan/templates-user/
rm my-filerun.xml
echo "Fichero my-filerun.xml eliminado."

# Copiar myfilerun_db.xml a /boot/config/plugins/dockerMan/templates-user/
echo "Copiando myfilerun_db.xml a /boot/config/plugins/dockerMan/templates-user/"
cp my-filerun_db.xml /boot/config/plugins/dockerMan/templates-user/
rm my-filerun_db.xml
echo "Fichero my-filerun_db.xml eliminado."

# Cargar la imagen de Docker desde filerun_img.tar
echo "Cargando imagen de Docker desde filerun_img.tar"
docker load -i filerun_img.tar
rm filerun_img.tar
echo "Fichero filerun_img.tar eliminado."

echo "Proceso completado, disfruta de tu Filerun (By The Face)."