---------------------------------------
-- nombre: tbl_equipos --
-- fecha de creacion: 19-05-2026 --
-- ultima modificacion : 21-05-2026 --
---------------------------------------

DROP TABLE tbl_equipos;
CREATE TABLE tbl_equipos(
    fld_codigoeqp VARCHAR2(15),
    fld_nombre VARCHAR2(80),
    fld_fechafund DATE,
    fld_ciudad VARCHAR2(50)
);

---------------------------------------
-- nombre: tbl_partidos --
-- fecha de creacion: 19-05-2026 --
-- ultima modificacion : 21-05-2026 --
---------------------------------------

DROP TABLE tbl_partidos;
CREATE TABLE tbl_partidos(
    fld_codigohome VARCHAR2(15),
    fld_codigovis VARCHAR2(15),
    fld_golesmarc NUMBER(3),
    fld_golesrec NUMBER(3),
    fld_fechapartido DATE
);

---------------------------------------
-- nombre: tbl_ciudades --
-- fecha de creacion: 19-05-2026 --
-- ultima modificacion : 21-05-2026 --
---------------------------------------

DROP TABLE tbl_ciudades;
CREATE TABLE tbl_ciudades(
    fld_codigocid VARCHAR2(15),
    fld_nombre VARCHAR2(80)
);