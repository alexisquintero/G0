obj = NEWOBJECT("capa_datos_socio", "C:\Fox\G0\Clases\capa_datos_socio.prg")

obj.c_apellido = "Rodriguez"
obj.c_nombre = "Juan"
obj.c_email = "juan_rodriguez@hotmail.com"
obj.c_domicilio = "cordoba 300"
obj.c_telefono = "034178945613"
obj.c_id_biblioteca = "1"
obj.agregar_socio

obj.c_apellido = "Perez"
obj.c_nombre = "Federico"
obj.c_email = "federico_perez@outlook.com"
obj.c_domicilio = "san juan 1900"
obj.c_telefono = "034145678123"
obj.c_id_biblioteca = "1"
obj.agregar_socio

obj.c_apellido = "Pagan"
obj.c_nombre = "Pedro"
obj.c_email = "pedro_pagan@yahoo.com"
obj.c_domicilio = "salta 750"
obj.c_telefono = "99999999999"
obj.c_id_biblioteca = "1"
obj.agregar_socio

obj.c_apellido = "Gomez"
obj.c_nombre = "Maria"
obj.c_email = "maria_gomez@gmail.com"
obj.c_domicilio = "espa�a 666"
obj.c_telefono = "1313133113"
obj.c_id_biblioteca = "1"
obj.agregar_socio

obj.c_apellido = "Gaitan"
obj.c_nombre = "Florencia"
obj.c_email = "florencia_gaitan@aol.com"
obj.c_domicilio = "876 san luis"
obj.c_telefono = "147258369"
obj.c_id_biblioteca = "1"
obj.agregar_socio

obj.primero
? obj.aut_nro_socio 
? obj.c_apellido 
? obj.c_nombre 
? obj.c_email 
? obj.c_domicilio 
? obj.c_telefono 
? obj.c_id_biblioteca

obj.siguiente
? obj.aut_nro_socio 
? obj.c_apellido 
? obj.c_nombre 
? obj.c_email 
? obj.c_domicilio 
? obj.c_telefono 
? obj.c_id_biblioteca

obj.borrar

obj.ultimo
? obj.aut_nro_socio 
? obj.c_apellido 
? obj.c_nombre 
? obj.c_email 
? obj.c_domicilio 
? obj.c_telefono 
? obj.c_id_biblioteca

obj.anterior
? obj.aut_nro_socio 
? obj.c_apellido 
? obj.c_nombre 
? obj.c_email 
? obj.c_domicilio 
? obj.c_telefono 
? obj.c_id_biblioteca


obj.c_apellido = "Gimenez"
obj.c_email = "maria_gimenez@gmail.com"
obj.c_nombre = NULL
obj.c_domicilio = NULL
obj.c_telefono = NULL
obj.c_id_biblioteca = NULL
obj.modificar
? obj.aut_nro_socio 
? obj.c_apellido 
? obj.c_nombre 
? obj.c_email 
? obj.c_domicilio 
? obj.c_telefono 
? obj.c_id_biblioteca


