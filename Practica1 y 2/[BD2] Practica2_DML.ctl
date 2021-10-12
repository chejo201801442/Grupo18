OPTIONS (SKIP=1)
LOAD DATA
INFILE "/home/Grupo18/[BD2] Clientes.csv"
INTO TABLE Cliente
fields terminated by "," (id_cliente,nombre_cliente,apellido_cliente,direccion_cliente,dpi_cliente)

OPTIONS (SKIP=1)
LOAD DATA
INFILE "/home/Grupo18/[BD2] Vendedores.csv"
INTO TABLE Vendedor
fields terminated by "," (id_vendedor,nombre_vendedor,apellido_vendedor,correo_vendedor,dpi_vendedor)

OPTIONS (SKIP=1)
LOAD DATA
INFILE "/home/Grupo18/[BD2] Productos.csv"
INTO TABLE Producto
fields terminated by "," OPTIONALLY ENCLOSED BY '"' (id_producto,nombre_producto,precio_producto "TO_NUMBER(:precio_producto,'$9999999999D99')",stock_producto)

OPTIONS (SKIP=1)
LOAD DATA
INFILE "/home/Grupo18/[BD2] Facturas.csv"
INTO TABLE Factura
fields terminated by "," (id_factura,id_cliente,id_vendedor,fecha_factura "TO_DATE(:fecha_factura, 'DD/MM/YYYY', 'NLS_DATE_LANGUAGE=ENGLISH')")

OPTIONS (SKIP=1)
LOAD DATA
INFILE "/home/Grupo18/[BD2] Detalle.csv"
INTO TABLE Detalle
fields terminated by "," (id_detalle,id_factura,id_producto,cantidad)