NOTAS IMPORTANTES PARA SYNOLOGY:

Leer como mínimo una vez de arriba a abajo este documento.

- Descargar los 3 ficheros, readme_synology.txt, compose.yaml y filerun_btf.tar.gz, descomprimir este útimo en local, obtenemos una serie de ficheros, los que nos interesan son: filerun.tar.gz, filerun_db.tar.gz, filerun_img.tar.

- Instalamos la imagen filerun_img.tar de filerun en Synology desde Container Manager desde el menú "Imagen", botón "Acción" -> Importar -> Agregar desde Archivo -> Desde dispositivo local.

- Descomprimimos en local el fichero filerun.tar.gz, en el Synology nos vamos con el File Station a la ruta donde están ubicados los dockers, normalmente en /volume1/docker y arrastramos la carpeta filerun que hemos obtenido al descomprimir el fichero anterior.

- Descomprimimos en local el fichero filerun_db.tar.gz, en el Synology nos vamos con el File Station a la ruta donde están ubicados los dockers, normalmente en /volume1/docker y arrastramos la carpeta filerun_db que hemos obtenido al descomprimir el fichero anterior.

- Ahora nos vamos a crear una carpeta compartida que será donde filerun almacenará los ficheros, le daremos permisos de escritura/lectura a nuestros usuario y al grupo users, por ejemplo filerun-share en volume1 y así está en el compose.yaml en el apartado volúmenes.

- Ahora tenemos que averiguar nuestro uid y gid mediante terminal en el NAS y ejecutamos: id <nuestro_nombre_de_usuario> y esto nos devolverá algo así:
    uid=1030(sylvia) gid=100(users) groups=100(users) 
    y editamos en el compose.yaml las variables:       
    APACHE_RUN_USER: sylvia
    APACHE_RUN_USER_ID: 1030
    APACHE_RUN_GROUP: users
    APACHE_RUN_GROUP_ID: 100
    
- Copiamos el compose.yaml que tenemos en local en /volume1/docker/filerun/

- Esperamos que se suban todos los ficheros antes de continuar.

- Ahora vamos a Container Manager -> Proyecto, botón "Crear", nombre del proyecto filerun, ruta /docker/filerun, nos dirá si queremos utilizar el docker-compose.yaml existente le decimos que OK. siguiente, siguiente y finalizar.

- Si nos vamos a la ip de nuestro NAS y el puerto 8686 por ejemplo http://192.168.2.10:8686 nos tiene que aparecer la ventana de inicio de sesión de filerun, iniciamos sesión con usuario filerun y password filerun y ya estamos dentro. 


El usuario por defecto es filerun y el password filerun, es importante cambiar el password después del primer inicio y antes de exponer filerun al exterior si es el caso.

En este punto ya tenemos funcional nuestro filerun, para los mas avanzados para ir mas rápido a la hora de subir los ficheros .tar.gz podéis subirlos comprimidos y después descomprimirlos directamente allí, eso a la elección de cada uno.