Create table Cliente(
    id_cliente int not null primary key,
    nombre_cliente char(50) not null,
    apellido_cliente char(50) not null,
    dpi_cliente char(50) not null,
    direccion_cliente char(50) not null
);

Create table Vendedor(
    id_vendedor int not null primary key,
    nombre_vendedor char(50) not null,
    apellido_vendedor char(50) not null,
    correo_vendedor char(50) not null,
    dpi_vendedor char(50) not null
);

Create table Producto(
    id_producto int not null primary key,
    nombre_producto char(50) not null,
    precio_producto number(15,2) not null,
    stock_producto int not null
);

Create table Factura(
    id_factura int not null primary key,
    id_cliente int not null,
    id_vendedor int not null,
    fecha_factura date not null,
      CONSTRAINT fk_id_cliente
    FOREIGN KEY (id_cliente)
    REFERENCES Cliente (id_cliente),
      CONSTRAINT fk_id_vendedor
    FOREIGN KEY (id_vendedor)
    REFERENCES Vendedor (id_vendedor)
);

Create table Detalle(
    id_detalle int not null primary key,
    id_factura int not null,
    id_producto int not null,
    cantidad int not null,
    total number(15,2),
      CONSTRAINT fk_id_factura
    FOREIGN KEY (id_factura)
    REFERENCES Factura (id_factura),
      CONSTRAINT fk_id_producto
    FOREIGN KEY (id_producto)
    REFERENCES Producto (id_producto)
);

