DEFINE CLASS capa_datos_socio as Custom 

FUNCTION agregar_socio
PARAMETERS c_apellido, c_nombre, c_email, c_domicilio, d_telefono, c_id_biblioteca 

INSERT INTO socio (apellido, nombre, email, domicilio, telefono, id_biblioteca);
	VALUES (c_apellido, c_nombre, c_email, c_domicilio, d_telefono, c_id_biblioteca)
	
RETURN 1

FUNCTION primero
LOCAL nombre
nombre = "hola"
SELECT MIN(nro_socio), apellido, nombre, email, domicilio, telefono, id_biblioteca from socio; 
	GROUP BY nro_socio, apellido, nombre, email, domicilio, telefono, id_biblioteca

RETURN nombre

FUNCTION siguiente

RETURN 

FUNCTION anterior

RETURN

FUNCTION ultimo

SELECT MAX(nro_socio), apellido, nombre, email, domicilio, telefono, id_biblioteca from socio; 
	GROUP BY nro_socio, apellido, nombre, email, domicilio, telefono, id_biblioteca
	
RETURN 

FUNCTION modificar
PARAMETERS aut_nro_socio, c_apellido, c_nombre, c_email, c_domicilio, d_telefono, c_id_biblioteca 

UPDATE socio SET;
	apellido = NVL(c_apellido, apellido), nombre = NVL(c_nombre, nombre), email = NVL(c_email,email), domicilio = NVL(c_domicilio, domicilio), telefono = NVL(d_telefono,telefono), id_biblioteca = NVL(c_id_biblioteca, id_biblioteca);
	WHERE nro_socio = aut_nro_socio
	
RETURN 

FUNCTION borrar
PARAMETERS aut_nro_socio

DELETE FROM socio;
	WHERE nro_socio = aut_nro_socio

ENDDEFINE 


