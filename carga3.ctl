OPTIONS (SKIP=1)
LOAD DATA
INFILE "/home/Grupo18/[BD2] Productos.csv"
INTO TABLE Producto
OPTIONALLY ENCLOSED BY '"'
fields terminated by "," (id_producto,nombre_producto,precio_producto "TO_NUMBER(:precio_producto,'$9999999999D99')",stock_producto)

