DEFINE FUNCTION capa_datos_prestamo as Custom 
** 987654321 valor inicial num�rico, 2000/01/01 valor inicial date
aut_num_prestamo = 987654321
date_fec_teor_devol = DATE(2000,01,01)
date_fec_prestamo = DATE(2000,01,01)
int_nro_socio = 987654321
datetime_hora_prestamo = DATETIME(2000,01,01,00,00,00)

FUNCTION devoluciones_pendientes
PARAMETERS p_int_nro_socio

pendientes = .F.

SELECT COUNT(num_prestamo) FROM prestamo;
	WHERE nro_socio = p_int_nro_socio;
	INTO CURSOR curCount

IIF(curCount > 0, pendientes = .T., pendientes = .F.)

RETURN pendientes

ENDDEFINE 