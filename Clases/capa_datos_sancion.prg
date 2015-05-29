DEFINE CLASS capa_datos_sancion as Custom
** 987654321 valor inicial numérico, 2000/01/01 valor inicial date
aut_id_sancion = 987654321
date_fec_sancion = DATE(2000,01,01) 
int_dias_sancion = 987654321
int_nro_socio = 987654321 

FUNCTION set_id_sancion
PARAMETERS p_aut_nro_sancion
	this.aut_id_sancion = p_aut_nro_sancion
RETURN 

FUNCTION get_id_sancion
RETURN this.aut_id_sancion

FUNCTION set_fec_sancion
PARAMETERS p_date_fec_sancion
	this.date_fec_sancion = p_date_sancion
RETURN 

FUNCTION get_fec_sancion
RETURN this.date_fec_sancion

FUNCTION set_dias_sancion
PARAMETERS p_int_dias_sancion
	this.int_dias_sancion = p_int_dias_sancion
RETURN 

FUNCTION get_dias_sancion
RETURN int_dias_sancion

FUNCTION set_nro_socio
PARAMETERS p_int_nro_socio
	this.int_nro_socio = p_int_nro_socio
RETURN 

FUNCTION get_nro_socio
RETURN int_nro_socio

FUNCTION sancionado
estado = .F.

SELECT dias_sancion, fec_sancion;
	FROM sancion;
	WHERE id_socio = this.int_nro_socio;
	INTO CURSOR curDatos_Sancion
	
DO WHILE NOT EOF()
	estado = iif(curDatos_Sancion.fec_sancion + curDatos_Sancion.dias_sancion >= DATE(), estado = .T., estado = .F.)
ENDDO 

RETURN estado