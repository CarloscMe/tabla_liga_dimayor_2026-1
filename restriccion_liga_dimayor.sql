--------------------------------
-- restricciones tbl_equipos --
--------------------------------

ALTER TABLE tbl_equipos ADD CONSTRAINT pk_codigoeqp PRIMARY KEY(fld_codigoeqp);

ALTER TABLE tbl_equipos ADD CONSTRAINT fk_ciudad_eqp FOREIGN KEY(fld_ciudad) REFERENCES tbl_ciudades(fld_codigocid);

--------------------------------
-- restricciones tbl_partidos --
--------------------------------

ALTER TABLE tbl_partidos ADD CONSTRAINT fk_codigohome FOREIGN KEY(fld_codigohome) REFERENCES tbl_equipos(fld_codigoeqp);

ALTER TABLE tbl_partidos ADD CONSTRAINT fk_codigovis FOREIGN KEY(fld_codigovis) REFERENCES tbl_equipos(fld_codigoeqp);


--------------------------------
-- restricciones tbl_ciudades --
--------------------------------

ALTER TABLE tbl_ciudades ADD CONSTRAINT pk_codigocid PRIMARY KEY(fld_codigocid);



