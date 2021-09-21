OPTIONS (SKIP=1)
LOAD DATA
INFILE "/home/Grupo18/[BD2] Clientes.csv"
INTO TABLE SYS.Cliente
fields terminated by "," (id_cliente,nombre_cliente,apellido_cliente,direccion_cliente,dpi_cliente)