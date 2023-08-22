 -- Cabecera  de los Comprobantes
use facturacion;
create table COMPROBANTE_CAB (
			COMPROBANTE_ID BIGINT NOT NULL AUTO_INCREMENT,
            TIPO_COMPROBANTE VARCHAR(15),
            LETRA_COMPROBANTE VARCHAR(15),
		    PUNTO_VENTA SMALLINT , 
            NRO_COMPROBANTE BIGINT NOT NULL  ,
            CLIENTE_ID mediumint NOT NULL,
            FECHA_EMISION datetime,
            FECHA date,
            IMPORTE double,
            IMPUESTO double,
            IMPORTE_TOTAL double,
            PRIMARY KEY(COMPROBANTE_ID),
            FOREIGN KEY (CLIENTE_ID) REFERENCES CLIENTES(CLIENTE_ID)
            );
 -- Detalle de los Comprobantes
create table COMPROBANTE_DET (
			COMPROBANTE_ID BIGINT NOT NULL AUTO_INCREMENT,
            PRODUCTO_ID SMALLINT,
            CANTIDAD SMALLINT,
		    PRECIO_UNITARIO double , 
            IMPUESTO double NOT NULL ,
            TOTAL double NOT NULL ,
            FOREIGN KEY(COMPROBANTE_ID) REFERENCES COMPROBANTE_CAB(COMPROBANTE_ID),
            FOREIGN KEY (PRODUCTO_ID) REFERENCES PRODUCTOS(PRODUCTO_ID) 
            );

-- Datos de los Clientes
create table CLIENTES (
			CLIENTE_ID MEDIUMINT NOT NULL AUTO_INCREMENT,
            RAZON_SOCIAL varchar(50),
            CUIT bigint,
		    DIRECCION varchar(50) , 
            TELEFONOS bigint  ,
            PRIMARY KEY(CLIENTE_ID)
            );
            
            
            create table PRODUCTOS (
			PRODUCTO_ID SMALLINT NOT NULL AUTO_INCREMENT,
            DESCRIPCION varchar(80),
            STOCK SMALLINT,
		    PRIMARY KEY(PRODUCTO_ID)
            );
            
        
			create table PRODUCTO_PRECIO (
			PRODUCTO_ID SMALLINT NOT NULL ,
            FECHA DATETIME,
            PRECIO_COMPRA double,
			PRECIO_VENTA double,
		    PRIMARY KEY(PRODUCTO_ID),
			FOREIGN KEY (PRODUCTO_ID) REFERENCES PRODUCTOS (PRODUCTO_ID)
            );          
            
            
            


            
            
            
            
