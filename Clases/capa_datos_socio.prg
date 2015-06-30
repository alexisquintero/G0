DEFINE CLASS capa_datos_socio as Custom 
** 987654321 valor inicial numérico
aut_nro_socio = 987654321
c_apellido = "valor inicial"
c_nombre = "valor inicial"
c_email = "valor inicial"
c_domicilio = "valor inicial"
c_telefono = "987654321"
c_id_biblioteca = "valor inicial"

FUNCTION agregar_socio

INSERT INTO socio (apellido, nombre, email, domicilio, telefono, id_biblioteca);
	VALUES (this.c_apellido, this.c_nombre, this.c_email, this.c_domicilio, this.c_telefono, this.c_id_biblioteca)
	
RETURN 

endfunc

FUNCTION primero

SELECT MIN(nro_socio) as primero FROM socio;
	INTO CURSOR cur_min
	
SELECT * from socio; 
	WHERE nro_socio = cur_min.primero;
	INTO CURSOR  curPri
	
this.aut_nro_socio = curPri.nro_socio
this.c_apellido = curPri.apellido
this.c_nombre = curPri.nombre
this.c_email = curPri.email
this.c_domicilio = curPri.domicilio
this.c_telefono = curPri.telefono
this.c_id_biblioteca  = curPri.id_biblioteca
	
RETURN this.aut_nro_socio
endfunc

FUNCTION siguiente
 
**if(this.aut_nro_socio = (select MAX(nro_socio) from socio))
**	MESSAGEBOX("Último elemento")
**	RETURN 
**ELSE 
	SELECT MIN(nro_socio) as siguiente from socio; 
		where (nro_socio > this.aut_nro_socio);
		INTO CURSOR curSig

	SELECT * from socio; 
		WHERE nro_socio = curSig.siguiente;
		INTO CURSOR  curNext

	this.aut_nro_socio = curNext.nro_socio
	this.c_apellido = curNext.apellido
	this.c_nombre = curNext.nombre
	this.c_email = curNext.email
	this.c_domicilio = curNext.domicilio
	this.c_telefono = curNext.telefono
	this.c_id_biblioteca  = curNext.id_biblioteca
**ENDIF 
RETURN 

endfunc

FUNCTION anterior

SELECT MAX(nro_socio) as anterior from socio; 
	WHERE (nro_socio < this.aut_nro_socio);
	INTO CURSOR curAnt

SELECT *from socio; 
	WHERE nro_socio = curAnt.anterior;
	INTO CURSOR  curPrev

this.aut_nro_socio = curPrev.nro_socio
this.c_apellido = curPrev.apellido
this.c_nombre = curPrev.nombre
this.c_email = curPrev.email
this.c_domicilio = curPrev.domicilio
this.c_telefono = curPrev.telefono
this.c_id_biblioteca  = curPrev.id_biblioteca

RETURN
endfunc

FUNCTION ultimo

SELECT MAX(nro_socio) as ultimo from socio; 
	INTO CURSOR curUlt
	
SELECT * from socio; 
	WHERE nro_socio = curUlt.ultimo;
	INTO CURSOR  curLast

this.aut_nro_socio = curLast.nro_socio
this.c_apellido = curLast.apellido
this.c_nombre = curLast.nombre
this.c_email = curLast.email
this.c_domicilio = curLast.domicilio
this.c_telefono = curLast.telefono
this.c_id_biblioteca  = curLast.id_biblioteca
	
RETURN this.aut_nro_socio
endfunc

FUNCTION modificar

UPDATE socio SET;
	apellido = NVL(this.c_apellido, apellido), nombre = NVL(this.c_nombre, nombre), email = NVL(this.c_email,email), domicilio = NVL(this.c_domicilio, domicilio), telefono = NVL(this.c_telefono,telefono), id_biblioteca = NVL(this.c_id_biblioteca, id_biblioteca);
	WHERE nro_socio = this.aut_nro_socio
**MESSAGEBOX("Socio nro: " + this.aut_nro_socio + " borrado")
	
RETURN 
endfunc

FUNCTION borrar

DELETE FROM socio;
	WHERE nro_socio = this.aut_nro_socio

RETURN 
endfunc

FUNCTION buscar

SELECT * FROM socio;
	WHERE nro_socio = this.aut_nro_socio;
	INTO CURSOR curBus

this.aut_nro_socio = curBus.nro_socio
this.c_apellido = curBus.apellido
this.c_nombre = curBus.nombre
this.c_email = curBus.email
this.c_domicilio = curBus.domicilio
this.c_telefono = curBus.telefono
this.c_id_biblioteca  = curBus.id_biblioteca
	
RETURN 
endfunc

FUNCTION existe
PARAMETERS p_c_nombre, p_c_apellido

encontrado = .F.

SELECT nro_socio FROM socio;
	WHERE ((nombre like p_c_nombre) AND (apellido like p_c_apellido));
	INTO CURSOR curExiste
	
IIF(RECCOUNT(curExiste) = 0, encontrado = .F., encontrado = .T.)

RETURN encontrado
endfunc

ENDDEFINE 


