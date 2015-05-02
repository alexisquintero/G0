DEFINE CLASS capa_datos_socio as Custom 
aut_nro_socio = 0
c_apellido = "asd"
c_nombre = "asd"
c_email = "asd"
c_domicilio = "asd"
d_telefono = "asd"
c_id_biblioteca = "asd"

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
	this.d_telefono = p_telefono
RETURN 

FUNCTION get_telefono
RETURN this.d_telefono

FUNCTION set_id_biblioteca
PARAMETERS p_id_biblioteca
	this.c_id_biblioteca = p_id_biblioteca
RETURN 

FUNCTION get_id_biblioteca
RETURN this.c_id_biblioteca

FUNCTION agregar_socio

INSERT INTO socio (apellido, nombre, email, domicilio, telefono, id_biblioteca);
	VALUES (this.c_apellido, this.c_nombre, this.c_email, this.c_domicilio, this.d_telefono, this.c_id_biblioteca)
	
RETURN 

FUNCTION primero

SELECT MIN(nro_socio) as primero FROM socio;
	GROUP BY nro_socio;
	INTO CURSOR cur_min
	
SELECT * from socio; 
	WHERE nro_socio = cur_min.primero;
	INTO CURSOR  curPri
	
this.aut_nro_socio = curPri.nro_socio
this.c_apellido = curPri.apellido
this.c_nombre = curPri.nombre
this.c_email = curPri.email
this.c_domicilio = curPri.domicilio
this.d_telefono = curPri.telefono
this.c_id_biblioteca  = curPri.id_biblioteca
	
RETURN 

FUNCTION siguiente

SELECT MIN(nro_socio) as siguiente from socio; 
	GROUP BY nro_socio;
	having MIN(nro_socio) > this.aut_nro_socio;
	INTO CURSOR curSig

SELECT * from socio; 
	WHERE nro_socio = curSig.siguiente;
	INTO CURSOR  curNext

this.aut_nro_socio = curNext.nro_socio
this.c_apellido = curNext.apellido
this.c_nombre = curNext.nombre
this.c_email = curNext.email
this.c_domicilio = curNext.domicilio
this.d_telefono = curNext.telefono
this.c_id_biblioteca  = curNext.id_biblioteca

RETURN 

FUNCTION anterior

SELECT MAX(nro_socio) as anterior from socio; 
	GROUP BY nro_socio;
	having MAX(nro_socio) < this.aut_nro_socio;
	INTO CURSOR curAnt

SELECT *from socio; 
	WHERE nro_socio = curAnt.anterior;
	INTO CURSOR  curPrev

this.aut_nro_socio = curPrev.nro_socio
this.c_apellido = curPrev.apellido
this.c_nombre = curPrev.nombre
this.c_email = curPrev.email
this.c_domicilio = curPrev.domicilio
this.d_telefono = curPrev.telefono
this.c_id_biblioteca  = curPrev.id_biblioteca

RETURN

FUNCTION ultimo

SELECT MAX(nro_socio) as ultimo from socio; 
	GROUP BY nro_socio ;
	INTO CURSOR curUlt
	
SELECT * from socio; 
	WHERE nro_socio = curUlt.ultimo;
	INTO CURSOR  curLast

this.aut_nro_socio = curLast.nro_socio
this.c_apellido = curLast.apellido
this.c_nombre = curLast.nombre
this.c_email = curLast.email
this.c_domicilio = curLast.domicilio
this.d_telefono = curLast.telefono
this.c_id_biblioteca  = curLast.id_biblioteca
	
RETURN 

FUNCTION modificar

UPDATE socio SET;
	apellido = NVL(this.c_apellido, apellido), nombre = NVL(this.c_nombre, nombre), email = NVL(this.c_email,email), domicilio = NVL(this.c_domicilio, domicilio), telefono = NVL(this.d_telefono,telefono), id_biblioteca = NVL(this.c_id_biblioteca, id_biblioteca);
	WHERE nro_socio = this.aut_nro_socio
	
RETURN 

FUNCTION borrar

DELETE FROM socio;
	WHERE nro_socio = this.aut_nro_socio

RETURN 
	
FUNCTION buscar

SELECT * FROM socio;
	WHERE nro_socio = this.aut_nro_socio;
	INTO CURSOR curBus

this.aut_nro_socio = curBus.nro_socio
this.c_apellido = curBus.apellido
this.c_nombre = curBus.nombre
this.c_email = curBus.email
this.c_domicilio = curBus.domicilio
this.d_telefono = curBus.telefono
this.c_id_biblioteca  = curBus.id_biblioteca
	
RETURN 

ENDDEFINE 


