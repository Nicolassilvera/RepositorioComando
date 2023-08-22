
--------------------------------------------------------------------------------------------------------------------------------------------

-- A)  Hacer una consulta con los siguientes datos de las Facturas:
-- • > NroFactura, FechaEmision, ImporteTotal, Ordenadas por FechaEmision de la más antigua a la mas actual.

SELECT NRO_COMPROBANTE, FECHA_EMISION, IMPORTE_TOTAL 
FROM COMPROBANTE_CAB 
ORDER BY FECHA_EMISION ASC; 

--------------------------------------------------------------------------------------------------------------------------------------------

-- B)  Hacer las consultas, con los siguientes datos de las Facturas y el detalle de estas: 
-- • > NroFactura, FechaEmision, ProductoId, Producto.Descripcion, Cantidad, PrecioUnitario, Impuesto, Total.
--     Ordenadas por NroFactura y FechaEmision de forma ascendente.

SELECT cab.NRO_COMPROBANTE, cab.FECHA_EMISION, det.PRODUCTO_ID, p.DESCRIPCION , det.CANTIDAD, det.PRECIO_UNITARIO, det.IMPUESTO, det.TOTAL
FROM COMPROBANTE_DET det
LEFT JOIN COMPROBANTE_CAB cab
ON det.comprobante_id = cab.comprobante_id
LEFT JOIN PRODUCTOS p
ON det.PRODUCTO_ID = p.PRODUCTO_ID
ORDER BY cab.NRO_COMPROBANTE AND cab.FECHA_EMISION asc;

-- • > NroFactura, FechaEmision, ClienteId, RazonSocial, Cuit, ProductoId, Producto.Descripcion, Cantidad, PrecioUnitario, Impuesto, Total.
--     Ordenadas por ClienteId y NroFactura, de forma ascendente.

SELECT cab.NRO_COMPROBANTE, cab.FECHA_EMISION, cab.CLIENTE_ID, c.RAZON_SOCIAL, c.CUIT , det.PRODUCTO_ID,  p.DESCRIPCION, det.CANTIDAD, det.PRECIO_UNITARIO, det.IMPUESTO, det.TOTAL
FROM COMPROBANTE_DET det
LEFT JOIN COMPROBANTE_CAB cab
ON det.comprobante_id = cab.comprobante_id
LEFT JOIN PRODUCTOS p
ON det.PRODUCTO_ID = p.PRODUCTO_ID
LEFT JOIN CLIENTES c
ON cab.CLIENTE_ID = c.CLIENTE_ID
ORDER BY c.CLIENTE_ID AND cab.NRO_COMPROBANTE ASC;

--------------------------------------------------------------------------------------------------------------------------------------------

-- C)	Hacer las consultas, con los siguientes datos agrupados:
-- • >	ClienteId, RazonSocial, Cantidad de Facturas, Importe Total Facturado. Ordenado por Razón Social de forma ascendente.

SELECT c.CLIENTE_ID, c.RAZON_SOCIAL, det.CANTIDAD, cab.IMPORTE_TOTAL
FROM COMPROBANTE_CAB cab
LEFT JOIN COMPROBANTE_DET det
ON cab.comprobante_id = det.comprobante_id
RIGHT JOIN CLIENTES c 
ON cab.CLIENTE_ID = c.CLIENTE_ID
ORDER BY c.RAZON_SOCIAL ASC;

-- • >	Los 10 Productos más facturados según la cantidad de productos.

select p.DESCRIPCION, det.CANTIDAD as ' Cant. Facturado'
FROM COMPROBANTE_DET det
right join PRODUCTOS p
on det.PRODUCTO_ID = p.PRODUCTO_ID
order by  det. CANTIDAD desc;

-- • >	Los 10 productos más facturados según el importe total facturado.

select p.DESCRIPCION, cab.IMPORTE_TOTAL as 'Importe total facturado'
FROM COMPROBANTE_DET det
right join PRODUCTOS p
on det.PRODUCTO_ID = p.PRODUCTO_ID
left join COMPROBANTE_CAB cab
on det.COMPROBANTE_ID = cab.COMPROBANTE_ID
order by  cab.IMPORTE_TOTAL desc;
	
-- • >	Los 5 Clientes con más cantidad de Facturas.

SELECT c.CLIENTE_ID, c.RAZON_SOCIAL, det.CANTIDAD
from COMPROBANTE_CAB cab
left join CLIENTES c
on cab.CLIENTE_ID = c.CLIENTE_ID
right join COMPROBANTE_DET det
on cab.COMPROBANTE_ID = det.COMPROBANTE_ID
order by det.cantidad desc
limit 5;

-- • >	Los 5 Clientes con mayor Importe total facturado.

SELECT c.CLIENTE_ID, c.RAZON_SOCIAL, cab.IMPORTE_TOTAL
from COMPROBANTE_CAB cab
left join CLIENTES c
on cab.CLIENTE_ID = c.CLIENTE_ID
right join COMPROBANTE_DET det
on cab.COMPROBANTE_ID = det.COMPROBANTE_ID
order by cab.IMPORTE_TOTAL  desc
limit 5;

--------------------------------------------------------------------------------------------------------------------------------------------

-- D)	Resolver la siguiente consulta:
-- • >	Realizar una consulta que devuelva la descripción del producto y el valor vigente (Precio de Venta) de todos los productos a una fecha específica. 

SELECT p.DESCRIPCION, pp.PRECIO_VENTA
FROM PRODUCTOS p
LEFT JOIN producto_precio pp
ON p.PRODUCTO_ID = pp.PRODUCTO_ID
WHERE pp.FECHA LIKE '2022-10-20 16:17:21';

--------------------------------------------------------------------------------------------------------------------------------------------

-- E)	Eliminar los datos de todas las tablas teniendo en cuenta, las restricciones propias de las relaciones realizadas (evitar errores por violación en las Fk)

/* 1 */ DELETE FROM PRODUCTO_PRECIO WHERE PRODUCTO_ID> 0;
/* 2 */ DELETE FROM COMPROBANTE_DET WHERE COMPROBANTE_ID> 0;
/* 3 */ DELETE FROM COMPROBANTE_CAB WHERE COMPROBANTE_ID> 0;
/* 4 */ DELETE FROM PRODUCTOS WHERE PRODUCTO_ID> 0;
/* 5 */ DELETE FROM CLIENTES WHERE CLIENTE_ID> 0;

--------------------------------------------------------------------------------------------------------------------------------------------

-- F)	Eliminar todas las tablas

DROP TABLE PRODUCTO_PRECIO;
DROP TABLE COMPROBANTE_DET;
DROP TABLE COMPROBANTE_CAB;
DROP TABLE PRODUCTOS;
DROP TABLE CLIENTES;

--------------------------------------------------------------------------------------------------------------------------------------------




