DEFINE CLASS capa_negocio_socio as Custom 
** 987654321 valor inicial numérico
aut_nro_socio = 987654321 
c_apellido = "valor inicial"
c_nombre = "valor inicial"
c_email = "valor inicial"
c_domicilio = "valor inicial"
c_telefono = "987654321"
c_id_biblioteca = "valor inicial"


function setValues()

objCapa_Datos_Socio.nro_socio = this.aut_nro_socio
objCapa_Datos_Socio.apellido = this.c_apellido
objCapa_Datos_Socio.nombre = this.c_nombre
objCapa_Datos_Socio.email = this.c_email 
objCapa_Datos_Socio.domicilio = this.c_domicilio
objCapa_Datos_Socio.telefono = this.c_telefono
objCapa_Datos_Socio.id_biblioteca = this.c_id_biblioteca 

endfunc

function getValues()

this.aut_nro_socio = objCapa_Datos_Socio.nro_socio
this.c_apellido = objCapa_Datos_Socio.apellido
this.c_nombre = objCapa_Datos_Socio.nombre
this.c_email = objCapa_Datos_Socio.email
this.c_domicilio = objCapa_Datos_Socio.domicilio
this.c_telefono = objCapa_Datos_Socio.telefono
this.c_id_biblioteca  = objCapa_Datos_Socio.id_biblioteca

endfunc

FUNCTION alta()

this.setValues

IIF(objCapa_Datos_Socio.existe(this.c_nombre, this.c_apellido), MESSAGEBOX("El socio: " + this.c_nombre + this.c_apellido + " ya ;
	existe"), objCapa_Datos_Socio.agregarsocio())

	this.getValues

RETURN 
endfunc

FUNCTION baja()

objCapa_Datos_Socio.nro_socio = this.aut_nro_socio
IIF(objCapa_Datos_Prestamo.devoluciones_pendientes(this.aut_nro_socio), MESSAGEBOX("El socio: " + this.c_nombre + this.c_apellido + " tiene ;
	devoluciones pendientes"), objCapa_Datos_Socio.borrar())

RETURN 
endfunc

FUNCTION siguiente()

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
endfunc

FUNCTION anterior()

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
endfunc

FUNCTION buscar()

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
endfunc 

FUNCTION modificar()

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
endfunc 

FUNCTION primero()

objCapa_Datos_Socio.primero()
this.aut_nro_socio = objCapa_Datos_Socio.nro_socio
this.c_apellido = objCapa_Datos_Socio.apellido
this.c_nombre = objCapa_Datos_Socio.nombre
this.c_email = objCapa_Datos_Socio.email
this.c_domicilio = objCapa_Datos_Socio.domicilio
this.c_telefono = objCapa_Datos_Socio.telefono
this.c_id_biblioteca  = objCapa_Datos_Socio.id_biblioteca

RETURN 
endfunc 

FUNCTION ultimo()

objCapa_Datos_Socio.ultimo()
this.aut_nro_socio = objCapa_Datos_Socio.nro_socio
this.c_apellido = objCapa_Datos_Socio.apellido
this.c_nombre = objCapa_Datos_Socio.nombre
this.c_email = objCapa_Datos_Socio.email
this.c_domicilio = objCapa_Datos_Socio.domicilio
this.c_telefono = objCapa_Datos_Socio.telefono
this.c_id_biblioteca  = objCapa_Datos_Socio.id_biblioteca

RETURN 
endfunc

ENDDEFINE 
