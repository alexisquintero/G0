DEFINE CLASS capa_datos_socio as Custom 

FUNCTION agregar_socio
PARAMETERS c_apellido, c_nombre, c_email, c_domicilio, d_telefono, c_id_biblioteca 

INSERT INTO socio (apellido, nombre, email, domicilio, telefono, id_biblioteca);
	VALUES (c_apellido, c_nombre, c_email, c_domicilio, d_telefono, c_id_biblioteca)
	
RETURN 1

ENDDEFINE 

