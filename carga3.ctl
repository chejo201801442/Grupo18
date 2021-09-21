OPTIONS (SKIP=1)
LOAD DATA
INFILE "/home/Grupo18/[BD2] Productos.csv"
INTO TABLE Producto
fields terminated by "|" (id_producto,nombre_producto,precio_producto "SUBSTR(:precio_producto,2)",stock_producto)

