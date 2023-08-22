
--
-- Inserto datos en la tabla CLIENTES
--

INSERT INTO CLIENTES (cliente_id, razon_social, cuit, direccion, telefonos) VALUES
				(1,'Cerrajeria el Manija', 38886111212, 'Av. Rivadavia 3477', 1561690899 ),
				(2,'Mc Donal', 28883341111, 'Av. Forest 327', 1121690122 ),		
				(3,'Burger King', 31176422212, 'Fragata Sarmiento 237', 1177693811 ),		
				(4,'Hrnos. Lopez', 31175198200, 'Av. Montes de Oca 2337', 1109697857 ),		
				(5,'Coto', 27700385112, 'Sarmiento 560', 1122698349 ),		
				(6,'Galletitas Marta', 23483341111, 'Av. Rivadavia 3477', 1161450991 ),		
				(7,'Motomensaje', 27723385902, ' Batalla del Pari 230', 1175090719 ),		
				(8,'Fibertel sa', 32736956210, 'campichuelo 345', 1177921719 ),		
				(9,'Termo Dinamico metal y chapa', 30056568207, ' Maipu 500', 1540598722 ),		
                (10,'Merendero el atrapa', 30099226412, 'Formosa 13', 1141654896 );


--
-- Inserto datos en la tabla PRODUCTOS
--   
       
INSERT INTO PRODUCTOS (PRODUCTO_ID, DESCRIPCION, STOCK) VALUES
				(1, 'Arroz integral', 4500),
                (2, 'Aceite', 2600),
                (3, 'Escoba para piso', 4500),
                (4, 'Termo lumilagro', 3810),
                (5, 'Harina 0000', 8530),
                (6, 'Filet Merlusa', 4067),
                (7, 'Netbook Lenovo', 545),
                (8, 'Paq. destornilladores Stanley', 921),
                (9, 'Cartuchera', 6310),
                (10, 'Mantel industrial', 9503);
                    
--
-- Inserto datos en la tabla producto_precio
--  

INSERT INTO producto_precio (PRODUCTO_ID, FECHA, PRECIO_COMPRA ,PRECIO_VENTA ) VALUES
				(7, '2022-10-20 16:17:21', 100000, 210000.6),
                (8, '2022-11-22 10:57:41', 4500, 11499.5),
                (4, '2022-08-20 11:19:01', 2377, 6700),
                (3, '2022-11-02 09:17:21', 789.90, 2145.5),
                (10, '2022-07-17 17:55:32', 1200, 3699);

--
-- Inserto datos en la tabla COMPROBANTE_CAB
--  
INSERT INTO COMPROBANTE_CAB (COMPROBANTE_ID, TIPO_COMPROBANTE, LETRA_COMPROBANTE ,PUNTO_VENTA, 
                             NRO_COMPROBANTE, CLIENTE_ID, FECHA_EMISION, FECHA, IMPORTE, IMPUESTO, IMPORTE_TOTAL) VALUES
               (1, 'Factura A', 'times Romans', 134, 3,1,'2022-08-12 09:17:21','2022-08-12', 210000.6 , 2000, 230000.6),
			   (2, 'Factura C', 'times Romans', 135, 5,2,'2022-08-14 08:27:01','2022-08-14', 112499.5 , 2000, 114499.5),              
			   (3, 'Factura C', 'times Romans', 136, 6,1,'2022-08-14 13:41:46','2022-08-14', 31719.5 , 2000,  33719.5),
			   (4, 'Factura A', 'times Romans', 137, 7,7,'2022-08-14 17:05:35','2022-08-14', 41420.5 , 2000, 43420.5 ),
               (5, 'Factura C', 'times Romans', 138, 7,7,'2022-08-14 17:06:07','2022-08-14', 41420.5 , 2000, 43420.5 ),
               (6, 'Factura B', 'times Romans', 139, 8,8,'2022-08-21 09:57:59','2022-08-21', 111450 , 2000, 113450 ),
               (7, 'Factura B', 'times Romans', 140, 9,4,'2022-09-01 08:05:07','2022-09-01', 11474.79 , 2000, 13474.79 ),
			   (8, 'Factura A', 'times Romans', 141, 10,9,'2022-09-07 15:42:13','2022-09-07', 71169.5 , 2000, 73169.5),
               (9, 'Factura A', 'times Romans', 142, 11,5,'2022-09-14 08:27:01','2022-09-14', 811423 , 2000,  813423),
               (10, 'Factura B','times Romans', 143, 12,10,'2022-10-31 10:30:09','2022-10-31', 10737 , 2000, 12737);
--
-- Inserto datos en la tabla COMPROBANTE_DET
--  
INSERT INTO COMPROBANTE_DET (COMPROBANTE_ID, PRODUCTO_ID, CANTIDAD, PRECIO_UNITARIO, IMPUESTO, TOTAL) VALUES
              (1,7,1,210000.6,2000,230000.6 ),
              (2,2,25,112499.5,2000, 114499.5),
              (3,8,15,31719.5 ,2000, 33719.5 ),
              (4,10,50,41420.5,2000, 43420.5),
              (5,10,50,41420.5,2000, 43420.5),
              (6,10,15,111450,2000, 113450),
              (7,1,3,11474.79,2000,13474.79),
              (8,5,8,71169.5,2000,73169.5),
              (9,4,26,811423,2000, 813423),
              (10,6,3,10737,2000, 12737);
              














