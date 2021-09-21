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