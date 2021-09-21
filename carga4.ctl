OPTIONS (SKIP=1)
LOAD DATA
INFILE "/home/Grupo18/[BD2] Facturas.csv"
INTO TABLE Factura
fields terminated by "," (iid_factura,id_cliente,id_vendedor,fecha_factura "TO_DATE(:fecha_factura, 'DD/MM/YYYY', 'NLS_DATE_LANGUAGE=ENGLISH')")