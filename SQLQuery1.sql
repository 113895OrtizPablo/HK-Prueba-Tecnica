CREATE DATABASE POLIZASHK;

USE  POLIZASHK;





CREATE TABLE TIPOSPRODUCTO(
IdTipoProducto INT IDENTITY(1,1),
NOMBRE VARCHAR(50)
constraint  pk_tipo_producto PRIMARY KEY(IdTipoProducto)
)
--Me parece mejor poner el tipo de producto dentro de la tabla productos
CREATE TABLE PRODUCTOS(
IdProducto INT IDENTITY(1,1),
NOMBRE VARCHAR(50),
IdTipoProducto INT
constraint  pk_producto PRIMARY KEY(IdProducto)
constraint fk_prod_tipo foreign key (IdTipoProducto)
references TIPOSPRODUCTO (IdTipoProducto)
)


CREATE TABLE POLIZA(
IdPoliza int identity(1,1),
IdProducto int,
Estado VARCHAR(20)
constraint  pk_poliza PRIMARY KEY(IdPoliza)
constraint fk_pol_prod foreign key (IdProducto)
references PRODUCTOS (IdProducto)
)

CREATE TABLE ASEGURADOS(
IdAsegurado INT IDENTITY(1,1),
IdPoliza int,
DNI int,
Nombre varchar(100),
FechaNacimiento Datetime,
Estado VARCHAR(20)
constraint  pk_asegurados PRIMARY KEY(IdAsegurado)
constraint fk_ASEG_pol foreign key (IdPoliza)
references POLIZA (IdPoliza)
)


--CREACION SP

Create Procedure sp_InsertTIPOSPRODUCTO
@descripcion varchar(50)
as 
	INSERT INTO TIPOSPRODUCTO (nombre) values (@descripcion)
Go

--Executes
EXEC sp_InsertTIPOSPRODUCTO "Producto 1"; 
EXEC sp_InsertTIPOSPRODUCTO "Producto 2"; 
--Consulta verificacion
SELECT * FROM  TIPOSPRODUCTO


Create Procedure sp_InsertPRODUCTOS
@descripcion varchar(50),
@IdTipoProducto INT
as 
	INSERT INTO PRODUCTOS (nombre,IdTipoProducto) values (@descripcion,@IdTipoProducto)
Go


EXEC sp_InsertPRODUCTOS "SEGURO CONTRA TERCEROS",1; 
EXEC sp_InsertPRODUCTOS "SEGURO FRANQUICIA",2; 
EXEC sp_InsertPRODUCTOS "SEGURO PERSONAL",1; 

SELECT * FROM PRODUCTOS


Create Procedure sp_InsertPOLIZA
@IdProducto INT,
@Estado varchar(20)
as 
	INSERT INTO POLIZA (IdProducto,Estado) values (@IdProducto,@Estado)
Go

EXEC sp_InsertPOLIZA 1, "ACTIVO"; 
EXEC sp_InsertPOLIZA 2, "ACTIVO"; 


EXEC sp_InsertPOLIZA 1, "NO ACTIVO"; 
EXEC sp_InsertPOLIZA 2, "NO ACTIVO"; 

SELECT * FROM POLIZA


Create Procedure sp_InsertASEGURADOS
@IdPoliza varchar(20),
@DNI int,
@Nombre varchar(100),
@FechaNacimiento Datetime,
@Estado VARCHAR(20)
as 
	INSERT INTO ASEGURADOS (IdPoliza,DNI,Nombre,FechaNacimiento,Estado) values (@IdPoliza,@DNI,@Nombre,@FechaNacimiento,@Estado)
Go

EXEC sp_InsertASEGURADOS 1, 123,CARLOS,'1990-05-14 ','ACTIVO'; 
EXEC sp_InsertASEGURADOS 2, 456,JOSÈ,'1996-07-14 ','ACTIVO';  
EXEC sp_InsertASEGURADOS 3, 789,MARCOS,'1999-11-14 ','ACTIVO'; 
EXEC sp_InsertASEGURADOS 4, 101112,PEDRO,'1980-03-14 ','ACTIVO'; 
--SP ID COMO PARAMETRO: DEVOLUCION Producto nombre, tipo de producto, nombre 
--estado 

/*Crear un procedimiento almacenado que muestre la descripción de un artículo de código determinado
(enviado como parámetro de entrada) y nos retorne el total facturado para ese artículo y el promedio
ponderado de los precios de venta de ese artículo*/
use libreria_1
--Según yo
CREATE PROCEDURE SP_POLIZA_CONSULTA
@ID_POLIZA INT,
@id_tipo_prod int output,
@nombretipo varchar(50) output,
@id_prod int output,
@nombreprod varchar(50) output,
@estadoPoliza varchar output,
@id_asegurado int output,
@dni int output,
@nombre varchar(50) output,
@nacimiento datetime output,
as
	--Acà iba a hacer el procedimiento almacenado para hacer la consulta


