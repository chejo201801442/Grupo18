OPTIONS (SKIP=1)
LOAD DATA
INFILE "/home/Grupo18/[BD2] Vendedores.csv"
INTO TABLE Vendedor
fields terminated by "," (id_vendedor,nombre_vendedor,apellido_vendedor,correo_vendedor,dpi_vendedor)

