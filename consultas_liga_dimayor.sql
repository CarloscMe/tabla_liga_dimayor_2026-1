-- Consulta de todos los equipos

SELECT fld_nombre as "nombre de equipos"
FROM tbl_equipos;

-- Consulta de los equipos de una ciudad especifica

SELECT fld_nombre as "nombre de equipos"
FROM tbl_equipos
WHERE fld_ciudad = '1M574';

-- Consulta de listado de equipos ordenados por fecha de fundacion de forma ascendente

SELECT fld_nombre as "nombre de equipos"
,fld_fechafund as "fecha de fundacion"
FROM tbl_equipos
ORDER BY fld_fechafund;