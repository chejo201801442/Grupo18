OPTIONS (SKIP=1)
LOAD DATA
INFILE '/home/oracle/Grupo18/archivo.csv'
INTO TABLE Cliente
fields terminated by ','  (id_cliente, nombre_cliente, apellido_cliente, edad_cliente,direccion_cliente);
