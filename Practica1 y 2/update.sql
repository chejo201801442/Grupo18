connect sho/1234;

update detalle set total = (Select precio_producto from producto where detalle.id_producto = producto.id_producto)*detalle.cantidad;

ALTER TABLE Detalle
MODIFY total number(15,2) not null;
