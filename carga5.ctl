OPTIONS (SKIP=1)
LOAD DATA
INFILE "/home/Grupo18/[BD2] Detalle.csv"
INTO TABLE Detalle (id_detalle,id_factura,id_producto,cantidad)
fields terminated by "," (DEFAULT,id_factura,id_producto,cantidad)

