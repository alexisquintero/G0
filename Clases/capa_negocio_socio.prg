DEFINE CLASS capa_negocio_socio as Custom 
** 987654321 valor inicial numérico
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

objCapa_Datos_Socio.nro_socio = this.aut_nro_socio
objCapa_Datos_Socio.apellido = this.c_apellido
objCapa_Datos_Socio.nombre = this.c_nombre
objCapa_Datos_Socio.email = this.c_email 
objCapa_Datos_Socio.domicilio = this.c_domicilio
objCapa_Datos_Socio.telefono = this.c_telefono
objCapa_Datos_Socio.id_biblioteca = this.c_id_biblioteca 

IIF(objCapa_Datos_Socio.existe(this.c_nombre, this.c_apellido), MESSAGEBOX("El socio: " + this.c_nombre + this.c_apellido + " ya ;
	existe"), objCapa_Datos_Socio.agregarsocio())
this.aut_nro_socio = objCapa_Datos_Socio.nro_socio
this.c_apellido = objCapa_Datos_Socio.apellido
this.c_nombre = objCapa_Datos_Socio.nombre
this.c_email = objCapa_Datos_Socio.email
this.c_domicilio = objCapa_Datos_Socio.domicilio
this.c_telefono = objCapa_Datos_Socio.telefono
this.c_id_biblioteca  = objCapa_Datos_Socio.id_biblioteca

RETURN 

FUNCTION baja

objCapa_Datos_Socio.nro_socio = this.aut_nro_socio
IIF(objCapa_Datos_Prestamo.devoluciones_pendientes(this.aut_nro_socio), MESSAGEBOX("El socio: " + this.c_nombre + this.c_apellido + " tiene ;
	devoluciones pendientes"), objCapa_Datos_Socio.borrar())

RETURN 

FUNCTION siguiente

objCapa_Datos_Socio.nro_socio = this.aut_nro_socio
objCapa_Datos_Socio.apellido = this.c_apellido
objCapa_Datos_Socio.nombre = this.c_nombre
objCapa_Datos_Socio.email = this.c_email 
objCapa_Datos_Socio.domicilio = this.c_domicilio
objCapa_Datos_Socio.telefono = this.c_telefono
objCapa_Datos_Socio.id_biblioteca = this.c_id_biblioteca 

objCDS.siguiente()
this.aut_nro_socio = objCapa_Datos_Socio.nro_socio
this.c_apellido = objCapa_Datos_Socio.apellido
this.c_nombre = objCapa_Datos_Socio.nombre
this.c_email = objCapa_Datos_Socio.email
this.c_domicilio = objCapa_Datos_Socio.domicilio
this.c_telefono = objCapa_Datos_Socio.telefono
this.c_id_biblioteca  = objCapa_Datos_Socio.id_biblioteca
	
RETURN 

FUNCTION anterior

objCapa_Datos_Socio.nro_socio = this.aut_nro_socio
objCapa_Datos_Socio.apellido = this.c_apellido
objCapa_Datos_Socio.nombre = this.c_nombre
objCapa_Datos_Socio.email = this.c_email 
objCapa_Datos_Socio.domicilio = this.c_domicilio
objCapa_Datos_Socio.telefono = this.c_telefono
objCapa_Datos_Socio.id_biblioteca = this.c_id_biblioteca 

objCDS.anterior()
this.aut_nro_socio = objCapa_Datos_Socio.nro_socio
this.c_apellido = objCapa_Datos_Socio.apellido
this.c_nombre = objCapa_Datos_Socio.nombre
this.c_email = objCapa_Datos_Socio.email
this.c_domicilio = objCapa_Datos_Socio.domicilio
this.c_telefono = objCapa_Datos_Socio.telefono
this.c_id_biblioteca  = objCapa_Datos_Socio.id_biblioteca
	
RETURN 

FUNCTION buscar

objCapa_Datos_Socio.nro_socio = this.aut_nro_socio

objCapa_Datos_Socio.buscar()
this.aut_nro_socio = objCapa_Datos_Socio.nro_socio
this.c_apellido = objCapa_Datos_Socio.apellido
this.c_nombre = objCapa_Datos_Socio.nombre
this.c_email = objCapa_Datos_Socio.email
this.c_domicilio = objCapa_Datos_Socio.domicilio
this.c_telefono = objCapa_Datos_Socio.telefono
this.c_id_biblioteca  = objCapa_Datos_Socio.id_biblioteca

RETURN 

FUNCTION modificar

objCapa_Datos_Socio.nro_socio = this.aut_nro_socio
objCapa_Datos_Socio.apellido = this.c_apellido
objCapa_Datos_Socio.nombre = this.c_nombre
objCapa_Datos_Socio.email = this.c_email 
objCapa_Datos_Socio.domicilio = this.c_domicilio
objCapa_Datos_Socio.telefono = this.c_telefono
objCapa_Datos_Socio.id_biblioteca = this.c_id_biblioteca 

objCapa_Datos_Socio.modificar()
this.aut_nro_socio = objCapa_Datos_Socio.nro_socio
this.c_apellido = objCapa_Datos_Socio.apellido
this.c_nombre = objCapa_Datos_Socio.nombre
this.c_email = objCapa_Datos_Socio.email
this.c_domicilio = objCapa_Datos_Socio.domicilio
this.c_telefono = objCapa_Datos_Socio.telefono
this.c_id_biblioteca  = objCapa_Datos_Socio.id_biblioteca

RETURN 

FUNCTION primero

objCapa_Datos_Socio.primero()
this.aut_nro_socio = objCapa_Datos_Socio.nro_socio
this.c_apellido = objCapa_Datos_Socio.apellido
this.c_nombre = objCapa_Datos_Socio.nombre
this.c_email = objCapa_Datos_Socio.email
this.c_domicilio = objCapa_Datos_Socio.domicilio
this.c_telefono = objCapa_Datos_Socio.telefono
this.c_id_biblioteca  = objCapa_Datos_Socio.id_biblioteca

RETURN 

FUNCTION ultimo

objCapa_Datos_Socio.ultimo()
this.aut_nro_socio = objCapa_Datos_Socio.nro_socio
this.c_apellido = objCapa_Datos_Socio.apellido
this.c_nombre = objCapa_Datos_Socio.nombre
this.c_email = objCapa_Datos_Socio.email
this.c_domicilio = objCapa_Datos_Socio.domicilio
this.c_telefono = objCapa_Datos_Socio.telefono
this.c_id_biblioteca  = objCapa_Datos_Socio.id_biblioteca

RETURN 

ENDDEFINE 
