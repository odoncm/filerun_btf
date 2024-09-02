NOTAS IMPORTANTES PARA UNRAID:

- Descargar los 3 ficheros, readme_unraid.txt, install_filerun.sh y filerun_btf.tar.gz y colocarlos en Unraid en la carpeta /root (por ejemplo).

- Ejecutar ./install_filerun.sh en esa carpeta. (antes asegurarnos que tenemos espacio libre en el docker.img de al menos 2 GB.).

- Una vez acabado todo el proceso de copia de ficheros y demás hay que instalar los contenedores filerun y filerun_db que los tenemos como plantillas, vamos a la pestaña Dockers y botón "Agregar Contenedor" y allí lo seleccionamos de la plantilla.

- De los dos contenedores (filerun y filerun_db) solo hay que tocar la variable "UserFile:" del contenedor filerun que es donde estarán nuestros ficheros.


Que hace el install_filerun.sh ?

- Descomprime el fichero filerun.tar.gz en /mnt/user/appdata/filerun

- Descomprime el fichero filerun_db.tar.gz en /mnt/user/appdata/filerun_db

- Copia la plantilla my-filerun.xml en /boot/config/plugins/dockerMan/templates-user

- Copia la plantilla my-filerun_db.xml en /boot/config/plugins/dockerMan/templates-user

- Inserta en docker.img la imagen de filerun del repo unraiders/filerun (ya inexistente) para tenerla disponible en local.

El usuario por defecto es filerun y el password filerun, es importante cambiar el password después del primer inicio y antes de exponer filerun al exterior si es el caso.

En el caso que de error de base de datos hay que editar el fichero autoconfig.php ubicado en /mnt/user/appdata/filerun/system/data/

En ese fichero si queremos otra ip o puerto en la DB especificarlo en server así: ip:puerto
 
Como siempre, antes de realizar cualquier acción como esta nos aseguramos que tenemos copia de nuestros ficheros como son:
    - copia de la carpeta appdata.
    - copia del usb.
    - copia del docker.img, para ello una buena utilidad es el plugin "Backup/Restore Appdata".


 