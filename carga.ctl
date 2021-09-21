OPTIONS (SKIP=1)
LOAD DATA
INFILE '/home/Grupo18/[BD2] Clientes.csv'
INTO TABLE Cliente
fields terminated by ','  (id_cliente, nombre_cliente, apellido_cliente, dpi_cliente ,direccion_cliente );



