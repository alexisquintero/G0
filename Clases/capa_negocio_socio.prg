DEFINE CLASS capa_negocio_socio as Custom 
** 987654321 valor inicial num�rico
aut_nro_socio = 987654321 
c_apellido = "valor inicial"
c_nombre = "valor inicial"
c_email = "valor inicial"
c_domicilio = "valor inicial"
c_telefono = "987654321"
c_id_biblioteca = "valor inicial"

FUNCTION set_nro_socio
PARAMETERS p_nro_socio
	this.aut_nro_socio = p_nro_socio
RETURN 

FUNCTION get_nro_socio
RETURN this.aut_nro_socio

FUNCTION set_apellido
PARAMETERS p_apellido
	this.c_apellido = p_apellido
RETURN 

FUNCTION get_apellido
RETURN this.c_apellido

FUNCTION set_nombre
PARAMETERS p_nombre
	this.c_nombre = p_nombre
RETURN 

FUNCTION get_nombre
RETURN this.c_nombre

FUNCTION set_email
PARAMETERS p_email
	this.c_email = p_email
RETURN 

FUNCTION get_email
RETURN this.c_email

FUNCTION set_domicilio
PARAMETERS p_domicilio
	this.c_domicilio = p_domicilio
RETURN 

FUNCTION get_domicilio
RETURN this.c_domicilio

FUNCTION set_telefono
PARAMETERS p_telefono
	this.c_telefono = p_telefono
RETURN 

FUNCTION get_telefono
RETURN this.c_telefono

FUNCTION set_id_biblioteca
PARAMETERS p_id_biblioteca
	this.c_id_biblioteca = p_id_biblioteca
RETURN 

FUNCTION get_id_biblioteca
RETURN this.c_id_biblioteca

FUNCTION alta

RETURN 

FUNCTION baja

RETURN 

FUNCTION siguiente

CDS.siguiente()
this.aut_nro_socio = objCDS.nro_socio
this.c_apellido = objCDS.apellido
this.c_nombre = objCDS.nombre
this.c_email = objCDS.email
this.c_domicilio = objCDS.domicilio
this.c_telefono = objCDS.telefono
this.c_id_biblioteca  = objCDS.id_biblioteca
	
RETURN 

FUNCTION anterior

objCDS.anterior()
this.aut_nro_socio = objCDS.nro_socio
this.c_apellido = objCDS.apellido
this.c_nombre = objCDS.nombre
this.c_email = objCDS.email
this.c_domicilio = objCDS.domicilio
this.c_telefono = objCDS.telefono
this.c_id_biblioteca  = objCDS.id_biblioteca
	
RETURN 

FUNCTION buscar

RETURN 

FUNCTION modificar

RETURN 

FUNCTION primero

RETURN 

FUNCTION ultimo

RETURN 
