SELECT T.* FROM 
(SELECT a.fld_codigoeqp AS Codigo
,a.fld_nombre AS Equipo
,pj.pj
,pg.pg
,PE.PE
,pp.pp
,pg.pg*3+pe.pe AS Puntos
 FROM tbl_equipos a
 LEFT JOIN 
 ( SELECT E.fld_codigoeqp, l.codigohome + v.codigovis AS PJ
  FROM  tbl_equipos e
  LEFT JOIN 
    (SELECT fld_codigohome,COUNT(*) AS Partidoslocales  FROM tbl_partidos  GROUP BY fld_codigohome) l ON e.fld_codigoeqp=l.fld_codigohome
  LEFT JOIN
    (SELECT fld_codigovis,COUNT(*) AS Partidosvisitantes  FROM tbl_partidos  GROUP BY fld_codigovis) v ON E.fld_codigoeqp=v.fld_codigovis) pj ON a.fld_codigoeqp=pj.fld_codigoeqp
LEFT JOIN  
(SELECT a.fld_codigoeqp, l.pgl + v.pgv  AS PG FROM tbl_equipos a 
LEFT JOIN  (SELECT fld_codigohome,COUNT(*) AS pgl FROM tbl_partidos  WHERE fld_golesmarc-fld_golesrec>0 GROUP BY fld_codigohome) l ON a.fld_codigoeqp=l.fld_codigohome
LEFT JOIN  (SELECT fld_codigovis,COUNT(*) AS pgv FROM tbl_partidos  WHERE fld_golesmarc-fld_golesrec>0 GROUP BY fld_codigovis) v ON a.fld_codigoeqp=v.fld_codigovis
) pg 
ON a.fld_codigoeqp=pg.fld_codigoeqp
 
LEFT JOIN 
(
SELECT a.fld_codigoeqp, l.pel + v.pev AS PE
FROM tbl_equipos a
LEFT JOIN 
(SELECT fld_codigohome,COUNT(*) AS pel
FROM tbl_partidos 
WHERE fld_golesmarc-fld_golesrec=0
GROUP BY fld_codigohome) l ON a.fld_codigoeqp=l.fld_codigohome
LEFT JOIN 
(SELECT fld_codigovis,COUNT(*) AS pev
FROM tbl_partidos 
WHERE fld_golesmarc-fld_golesrec=0
GROUP BY fld_codigovis) v ON a.fld_codigoeqp=v.fld_codigovis
) PE ON A.FLD_codigoeqp=PE.FLD_codigoeqp


LEFT JOIN
 (
 SELECT a.fld_codigoeqp, l.ppl + v.ppv AS PP
FROM tbl_equipos a
LEFT JOIN 
(SELECT fld_codigohome,COUNT(*) AS ppl
FROM tbl_partidos 
WHERE fld_golesmarc-fld_golesrec<0
GROUP BY fld_codigohome) l ON a.fld_codigoeqp=l.fld_codigohome
LEFT JOIN 
(SELECT fld_codigovis,COUNT(*) AS ppv
FROM tbl_partidos 
WHERE fld_golesmarc-fld_golesrec<0
GROUP BY fld_codigovis) v ON a.fld_codigoeqp=v.fld_codigovis
 ) pp ON a.fld_codigoeqp=pp.fld_codigoeqp ) t
ORDER BY t.puntos DESC 

 