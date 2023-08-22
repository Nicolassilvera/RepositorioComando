CREATE TABLE LIBRO (
					NRO_LIBRO int not null, 
					TITULO char(40),
                     AUTOR char(30),
                     TIPO char(2),
                     PRECIO_ORI BIGINT,
                     PRECIO_ACT BIGINT, 
                     EDICION smallint,
					 ESTADO char(1),
                     PRIMARY KEY(NRO_LIBRO))
					 ;
--
CREATE TABLE TIPOLIBRO (
					TIPO char(2) not null primary key,
					DESCTIPO char(40)
                    )
					;	
--
CREATE TABLE LECTOR (
					 NRO_LECTOR int,
                     NOMBRE char(22),
                     DIRECCION char(30),
                     TRABAJO char(10),
                     SALARIO BIGINT,
					 ESTADO char(1),
                      PRIMARY KEY(NRO_LECTOR))
					 ;
--
CREATE TABLE COPIAS (
					   NRO_LIBRO int,
                       NRO_COPIA smallint,
					   ESTADO char(1),
                        PRIMARY KEY(NRO_COPIA))
					   ;
--
CREATE TABLE PRESTAMO (
                       NRO_LECTOR int not null,
                       NRO_LIBRO int not null ,
                       NRO_COPIA smallint,
                       F_PREST datetime,
                       F_DEVOL datetime,
                       foreign key(NRO_LECTOR) references LECTOR(NRO_LECTOR),
					   foreign key(NRO_LIBRO) references LIBRO(NRO_LIBRO),
                       foreign key(NRO_COPIA) references COPIAS(NRO_COPIA))
					   ;
                       
                  show create table PRESTAMO; 


