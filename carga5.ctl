OPTIONS (SKIP=1)
LOAD DATA
INFILE "/home/Grupo18/[BD2] Detalle.csv"
INTO TABLE Detalle
fields terminated by "," (IDENTITY,id_factura,id_producto,cantidad)

