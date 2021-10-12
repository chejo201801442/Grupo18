
ALTER TABLE Detalle
MODIFY total number(15,2) not null;

update detalle set total = (Select precio_producto from producto where detalle.id_producto = producto.id_producto)*detalle.cantidad;

--1. Top 10 de los vendedores que han concretado más ventas.
SELECT trim(vendedor.dpi_vendedor) AS dpi, trim(vendedor.nombre_vendedor) AS nombre, count(*) AS Ventas
FROM vendedor INNER JOIN factura ON vendedor.id_vendedor = factura.id_vendedor
GROUP BY trim(vendedor.dpi_vendedor), trim(vendedor.nombre_vendedor)
ORDER BY ventas DESC
FETCH NEXT 10 ROWS ONLY;
 
--2. Top 3 de productos más vendidos en el año 2020.
SELECT producto.nombre_producto AS Producto, count(*) AS Ventas
FROM producto INNER JOIN detalle ON producto.id_producto = detalle.id_producto
INNER JOIN factura ON detalle.id_factura = factura.id_factura
WHERE EXTRACT (year FROM factura.fecha_factura) = 2020
GROUP BY producto.nombre_producto
ORDER BY Ventas DESC
FETCH NEXT 3 ROWS ONLY;
 
--3. Top 5 de los productos que menos se han vendido en el año 2021.
SELECT producto.nombre_producto AS Producto, count(*) AS Ventas
FROM producto INNER JOIN detalle ON producto.id_producto = detalle.id_producto
INNER JOIN factura ON detalle.id_factura = factura.id_factura
WHERE EXTRACT (year FROM factura.fecha_factura) = 2021
GROUP BY producto.nombre_producto
ORDER BY Ventas ASC
FETCH NEXT 5 ROWS ONLY;
 
--4. Top 5 de vendedores que han atendido una mayor cantidad de clientes.
SELECT vendedor.id_vendedor, trim(vendedor.dpi_vendedor) AS dpi, trim(vendedor.nombre_vendedor) AS nombre, count(*) AS Clientes
FROM
    (
        SELECT DISTINCT factura.id_vendedor AS idVend, factura.id_cliente 
        FROM factura
        ORDER BY factura.id_cliente DESC
    ) 
INNER JOIN vendedor ON vendedor.id_vendedor = idVend
GROUP BY vendedor.id_vendedor, trim(vendedor.dpi_vendedor) , trim(vendedor.nombre_vendedor)
ORDER BY Clientes DESC
FETCH NEXT 5 ROWS ONLY;