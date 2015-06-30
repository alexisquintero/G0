DEFINE CLASS capa_datos_sancion as Custom
** 987654321 valor inicial numérico, 2000/01/01 valor inicial date
aut_id_sancion = 987654321
date_fec_sancion = DATE(2000,01,01) 
int_dias_sancion = 987654321
int_nro_socio = 987654321 


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