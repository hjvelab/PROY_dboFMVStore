-- ======================================================
-- Modi de la Base de datos
-- ======================================================
DROP DATABASE IF EXISTS dboFMVstore
GO

CREATE DATABASE dboFMVstore
GO

USE dboFMVstore
GO
-- ======================================================
-- Creacion de las tablas
-- ======================================================

CREATE TABLE Cliente (
idCliente INT IDENTITY NOT NULL,
nombre VARCHAR(100) NOT NULL,
tipoDocumento VARCHAR(20) NOT NULL,
numDocumento VARCHAR(20) NOT NULL,
sexo VARCHAR(15) NOT NULL,
fechaNacimiento DATE NOT NULL,
edad INT NOT NULL,
email VARCHAR(100) NOT NULL,
celular INT NOT NULL,
direccion VARCHAR(100) NOT NULL,
departamento VARCHAR(100) NOT NULL,
provincia VARCHAR(100) NOT NULL,
distrito VARCHAR(100) NOT NULL,
CONSTRAINT PK_Cliente PRIMARY KEY(idCliente)
)
GO

ALTER TABLE Cliente ADD CONSTRAINT UQ_Cliente_numDocumento UNIQUE (numDocumento)
GO 

CREATE TABLE Proveedor (
idProveedor INT IDENTITY NOT NULL,
nombre VARCHAR(100) NOT NULL,
tipoDocumento VARCHAR(20) NOT NULL,
numDocumento VARCHAR(20) NOT NULL,
email VARCHAR(100) NOT NULL,
celular INT NOT NULL,
direccion VARCHAR(100) NOT NULL,
departamento VARCHAR(100) NOT NULL,
provincia VARCHAR(100) NOT NULL,
distrito VARCHAR(100) NOT NULL,
estado VARCHAR(8) NOT NULL,
CONSTRAINT PK_Proveedor PRIMARY KEY(idProveedor)
)
GO

ALTER TABLE Proveedor ADD CONSTRAINT UQ_Proveedor_numDocumento UNIQUE (numDocumento)
GO 

CREATE TABLE Marca (
idMarca INT IDENTITY NOT NULL,
nombre VARCHAR(30) NOT NULL,
CONSTRAINT PK_Marca PRIMARY KEY(idMarca)
)
GO

CREATE TABLE Categoria (
idCategoria INT IDENTITY NOT NULL,
nombre VARCHAR(30) NOT NULL,
CONSTRAINT PK_idCategoria PRIMARY KEY(idCategoria)
)
GO

CREATE TABLE Rol (
idRol INT IDENTITY NOT NULL,
nombre VARCHAR(30) NOT NULL,
descripcion VARCHAR(100) NOT NULL,
estado VARCHAR(8) NOT NULL
CONSTRAINT PK_Rol PRIMARY KEY(idRol)
)
GO

CREATE TABLE Producto (
idProducto INT IDENTITY NOT NULL,
nombreProducto VARCHAR(100) NOT NULL,
precio DECIMAL(18,2) NOT NULL,
stock INT NOT NULL,
idMarca INT NOT NULL,
idCategoria INT NOT NULL,
CONSTRAINT PK_Producto PRIMARY KEY(idProducto),
CONSTRAINT FK_Producto_Marca FOREIGN KEY (idMarca) REFERENCES Marca(idMarca),
CONSTRAINT FK_Producto_Categoria FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria)
)
GO

ALTER TABLE Producto ADD CONSTRAINT CH_Producto_Stock CHECK(stock>0)
GO

CREATE TABLE Usuario (
idUsuario INT IDENTITY NOT NULL,
usuario VARCHAR(30) NOT NULL, 
contrasenia VARCHAR(100) NOT NULL,
nombreUsuario VARCHAR(100) NOT NULL,
tipoDocumento VARCHAR(20) NOT NULL,
numDocumento VARCHAR(20) NOT NULL,
email VARCHAR(100) NOT NULL,
celular INT NOT NULL,
estado VARCHAR(8) NOT NULL,
idRol INT NOT NULL,
CONSTRAINT PK_Usuario PRIMARY KEY(idUsuario),
CONSTRAINT FK_Usuario_Rol FOREIGN KEY (idRol) REFERENCES Rol(idRol),
)
GO

ALTER TABLE Usuario ADD CONSTRAINT UQ_Usuario_numDocumento UNIQUE (numDocumento)
GO 

CREATE TABLE Venta (
idVenta INT IDENTITY NOT NULL,
tipoComprobante VARCHAR(7) NOT NULL,
numComprobante VARCHAR(20) NOT NULL,
fechaEmision DATE NOT NULL,
tipoPago VARCHAR(8) NOT NULL,
total  DECIMAL(18,2) NULL,
estado VARCHAR(8) NOT NULL,
idUsuario INT NOT NULL,
idCliente INT NOT NULL,
CONSTRAINT PK_Venta PRIMARY KEY(idVenta),
CONSTRAINT FK_Venta_Usuario FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
CONSTRAINT FK_Venta_Cliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
)
GO

CREATE TABLE Detalle_Venta (
idDetalle_Venta INT IDENTITY NOT NULL,
cantidad INT NOT NULL,
importe DECIMAL(18,2) NULL,
igv DECIMAL(18,2) NULL,
precioFinal AS (importe+igv),
idVenta INT NOT NULL,
idProducto INT NOT NULL,
CONSTRAINT PK_DetalleVenta PRIMARY KEY(idDetalle_Venta),
CONSTRAINT FK_DetalleVenta_Venta FOREIGN KEY (idVenta) REFERENCES Venta(idVenta),
CONSTRAINT FK_DetalleVenta_Producto FOREIGN KEY (idProducto) REFERENCES Producto(idProducto)
)
GO

ALTER TABLE Detalle_Venta ADD CONSTRAINT CH_DetalleVenta_Cantidad CHECK(cantidad>0)
GO

CREATE TABLE Orden_Compra (
idOrden_Compra INT IDENTITY NOT NULL,
tipoComprobante VARCHAR(7) NOT NULL,
numComprobante VARCHAR(20) NOT NULL,
fechaEmision DATE NOT NULL,
tipoPago VARCHAR(8) NOT NULL,
total  DECIMAL(18,2) NULL,
estado VARCHAR(12) NOT NULL,
idUsuario INT NOT NULL,
idProveedor INT NOT NULL,
CONSTRAINT PK_OrdenCompra PRIMARY KEY(idOrden_Compra),
CONSTRAINT FK_OrdenCompra_Usuario FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
CONSTRAINT FK_OrdenCompra_Proveedor FOREIGN KEY (idProveedor) REFERENCES Proveedor(idProveedor)
)
GO

CREATE TABLE Detalle_OrdenCompra (
idDetalle_OrdenCompra INT IDENTITY NOT NULL,
cantidad INT NOT NULL,
precio DECIMAL(18,2) NOT NULL,
importe  AS (cantidad*precio),
igv DECIMAL(18,2) NULL,
precioFinal AS (cantidad*precio+igv),
idOrden_Compra INT NOT NULL,
idProducto INT NOT NULL,
CONSTRAINT PK_DetalleOrdenCompra PRIMARY KEY(idDetalle_OrdenCompra),
CONSTRAINT FK_DetalleOrdenCompra_OrdenCompra FOREIGN KEY (idOrden_Compra) REFERENCES Orden_Compra(idOrden_Compra),
CONSTRAINT FK_DetalleOrdenCompra_Producto FOREIGN KEY (idProducto) REFERENCES Producto(idProducto),
)
GO

ALTER TABLE Detalle_OrdenCompra ADD CONSTRAINT CH_DetalleOrdenCompra_Cantidad CHECK(cantidad>0)
ALTER TABLE Detalle_OrdenCompra ADD CONSTRAINT CH_DetalleOrdenCompra_Precio CHECK(precio>0)
GO

-- ======================================================
-- Insertar datos a las tablas
-- ======================================================

--Por defecto viene otro formato de fecha, por esta razón realizamos el cambio de formato de fecha
SET DATEFORMAT dmy
GO

INSERT INTO Cliente VALUES('Gianina Maria Pilar Vasquez','DNI','79653264','Femenino','2/07/2000',24,'mpvasquez@gmail.com',987548721,'Las Malvinas','Lima','Lima','Lima')
INSERT INTO Cliente VALUES('Ismael Gael Quiroz Barraza','CE','72654418','Masculino','10/09/1995',29,'gquirozb@hotmail.com',963532684,'Las Flores','Lima','Lima','Ate Vitarte')
INSERT INTO Cliente VALUES('Esperanza Ramirez Zevallos','DNI','73458127','Femenino','20/05/2002',22,'erzevallos@gmail.com',965800820,'Jr. Abancay 23','Lima','Lima','La Victoria')
INSERT INTO Cliente VALUES('Antonio Cartagena Miranda','CE','74753684','Masculino','10/09/1995',29,'acmrianda@hotmail.com',948751249,'Av. Larco 2367','Lima','Lima','Miraflores')
INSERT INTO Cliente VALUES('Jackeline Alban Chuquipoma','DNI','75687841','Femenino','5/09/2002',24,'jalvanc@hotmail.com',947448121,'Los  Girasoles','Lima','Lima','Lima')
INSERT INTO Cliente VALUES('Vanesa Amanqui Condori','DNI','43082118','Femenino','12/01/1993',31,'vamanqui@hotmail.com',987453127,'Cl. Magdalena Mena','Lima','Lima','Lima')
GO

INSERT INTO Proveedor VALUES('BellezaRadiante S.A.C.','RUC',20125698451,'bellezarsac@hotmail.com',967845249,'Miguel Grau','Lima','Lima','Lima','Activo')
INSERT INTO Proveedor VALUES('GlamourCosmetics E.I.R.L.','RUC',20137856214,'gcosmeticeirl@hotmail.com',967845201,'Avenida la Peruanidad','Lima','Lima','Jesus Maria','Activo')
INSERT INTO Proveedor VALUES('ImportadoraShiale S.A.C.','RUC',20107865218,'shialesac@hotmail.com',949257896,'Inambari 731','Lima','Lima','Lince','Activo')
INSERT INTO Proveedor VALUES('DistribuidoraCosmetic S.A.C.','RUC',20070765259,'cosmneticsac@hotmail.com',986782451,'Las Flores','Lima','Lima','Surco','Activo')
INSERT INTO Proveedor VALUES('EstiloCosmetic S.A.C.','RUC',20484967845,'estilosac@gmail.com',923589648,'Jr Cuzco 765','Lima','Lima','Lince','Activo')
GO

INSERT INTO Rol VALUES('Administrador','Administrador del sistema','Activo')
INSERT INTO Rol VALUES('Encargado','Encargado de ventas','Activo')
INSERT INTO Rol VALUES('Asesor','Asesor de ventas','Activo')
GO

INSERT INTO Usuario VALUES('Majo','majo024','Maria Jose Quispe Arenas','DNI','74854695','mquispe@hotmail.com',984516482,'Activo',3)
INSERT INTO Usuario VALUES('Luga','luga2024','Luisa Gabrila Gonzales Pachas','DNI','79648514','lgonzales@gmail.com',984758152,'Activo',3)
INSERT INTO Usuario VALUES('Mate','mate2024','Manuel Teodoro Marquez Ramirez','DNI','76524982','mtmramirez@hotmail.com',965248173,'Activo',3)
GO

INSERT INTO Marca VALUES('Unique')
INSERT INTO Marca VALUES('Yanbal')
INSERT INTO Marca VALUES('Esika')
INSERT INTO Marca VALUES('Essence')
INSERT INTO Marca VALUES('Loreal Paris')
INSERT INTO Marca VALUES('Elf')
INSERT INTO Marca VALUES('Nyc')
INSERT INTO Marca VALUES('Maybelline')
INSERT INTO Marca VALUES('Revlon')
INSERT INTO Marca VALUES('Neutrogena')
INSERT INTO Marca VALUES('Nivea')
INSERT INTO Marca VALUES('Ponds')
GO

INSERT INTO Categoria VALUES('Maquillaje')
INSERT INTO Categoria VALUES('Fragancias')
INSERT INTO Categoria VALUES('Piel')
GO

INSERT INTO Producto VALUES('Correctores',12.5,20,1,1)
INSERT INTO Producto VALUES('Rubores',9,10,2,1)
INSERT INTO Producto VALUES('Perfume ',23,18,2,2)
INSERT INTO Producto VALUES('Colonia',11,22,1,2)
INSERT INTO Producto VALUES('Labiales',12.90,15,6,1)
INSERT INTO Producto VALUES('Lapiz de ojos',9.90,18,8,1)
INSERT INTO Producto VALUES('Rimel',15.90,25,9,1)
INSERT INTO Producto VALUES('Base de maquillaje',30,20,8,1)
INSERT INTO Producto VALUES('Crema hidratante',39.90,20,10,3)
INSERT INTO Producto VALUES('Contorno de ojos',29.90,40,11,3)
INSERT INTO Producto VALUES('Bloqueador',49.90,28,10,3)
INSERT INTO Producto VALUES('Alpha Perfume de hombre',59.90,15,3,2)
INSERT INTO Producto VALUES('Vibranza',59.90,19,3,2)
INSERT INTO Producto VALUES('Ohm para hombre',65,25,3,1)
GO

-- ======================================================
-- Procedimientos Almacenados
-- ======================================================

--Procedimiento Almacenado para registro de ventas
CREATE PROCEDURE SP_Venta
@tipoComprobante VARCHAR(7),
@numComprobante VARCHAR(20),
@fechaEmision DATE,
@tipoPago VARCHAR(8),
@estado VARCHAR(8),
@idUsuario INT,
@idCliente INT
AS
INSERT INTO Venta(tipoComprobante,numComprobante,fechaEmision,tipoPago,estado,idUsuario,idCliente)
VALUES (@tipoComprobante,@numComprobante,@fechaEmision,@tipoPago,@estado,@idUsuario,@idCliente)
GO

--Procedimiento Almacenado para insertar un producto a una determinada venta
CREATE PROCEDURE SP_DetalleVenta
@cantidad INT,
@idVenta INT,
@idProducto INT
AS
    -- Insertar el nuevo detalle de venta
    INSERT INTO Detalle_Venta (cantidad, idVenta, idProducto)
    VALUES (@cantidad, @idVenta, @idProducto);

	/*
    -- Calcula el subtotal e igv
    UPDATE dv
    SET dv.importe = dv.cantidad * p.precio,
        dv.igv = (dv.cantidad * p.precio) * 0.18
    FROM Detalle_Venta dv
    INNER JOIN Producto p ON dv.idProducto = p.idProducto
    WHERE dv.idVenta = @idVenta;
	UPDATE Venta 
	SET total = (SELECT SUM(precioFinal)AS Total_Venta FROM Detalle_Venta WHERE  Detalle_Venta.idVenta=@idVenta)
	WHERE idVenta=@idVenta
	--Actualizar stock de producto por venta
	UPDATE Producto
	SET stock=stock-@cantidad
	WHERE idProducto=@idProducto
	*/
GO

-- ======================================================
-- TRIGGER / Disparadores
-- ======================================================
ALTER TRIGGER TRG_detalle_ventas
ON Detalle_Venta
AFTER INSERT
AS
BEGIN
	--No devuelve filas afectadas
	SET NOCOUNT ON

	--Declaramos el idVenta con la fila insertada
	DECLARE @idVenta int
	SET @idventa = (SELECT idVenta FROM inserted);
	PRINT'idVenta: Check'
	
	--Calcula el importe e igv del detalle de venta
	UPDATE dv
    SET dv.importe = dv.cantidad * p.precio,
        dv.igv = (dv.cantidad * p.precio) * 0.18
    FROM Detalle_Venta dv
    INNER JOIN Producto p ON dv.idProducto = p.idProducto
    WHERE dv.idVenta = @idVenta;
	PRINT'Detalle_Venta: Actualizado'

	--Declaramos la sumatoria del precioFinal mediante el idVenta declarado desde la tabla detalle
	DECLARE @subtotal money
	SET @subtotal = (SELECT SUM(precioFinal) AS Total_Venta FROM Detalle_Venta WHERE Detalle_Venta.idVenta=@idVenta)
	PRINT'Subtotal: Check'

	--Actualiza el total de la venta con la suma del detalle_venta
	UPDATE Venta SET [total]=@subtotal WHERE [idVenta]=@idventa
	PRINT'Venta: Actualizado'

	--Verificamos el estado de venta y sus productos
	SELECT * FROM Venta WHERE [idVenta]=@idventa
	SELECT * FROM Detalle_Venta WHERE [idVenta]=@idventa
END

CREATE PROCEDURE SP_OrdenCompra
@tipoComprobante VARCHAR(7),
@numComprobante VARCHAR(20),
@fechaEmision DATE,
@tipoPago VARCHAR(8),
@estado VARCHAR(12),
@idUsuario INT,
@idProveedor INT
AS
INSERT INTO Orden_Compra(tipoComprobante,numComprobante,fechaEmision,tipoPago,estado,idUsuario,idProveedor)
VALUES (@tipoComprobante,@numComprobante,@fechaEmision,@tipoPago,@estado,@idUsuario,@idProveedor)
GO

--Procedimiento Almacenado para insertar un producto a una determinada venta
CREATE PROCEDURE SP_DetalleOrdenCompra
@cantidad INT,
@precio DECIMAL(18,2),
@idOrdenCompra INT,
@idProducto INT
AS
    -- Insertar el nuevo detalle de venta
    INSERT INTO Detalle_OrdenCompra(cantidad, precio, idOrden_Compra, idProducto)
    VALUES (@cantidad, @precio,@idOrdenCompra, @idProducto);
    -- Calcula el subtotal e igv
    UPDATE doc
    SET doc.igv = (doc.cantidad*doc.precio)*0.18
    FROM Detalle_OrdenCompra doc
    WHERE doc.idOrden_Compra = @idOrdenCompra;

	UPDATE Orden_Compra 
	SET total = (SELECT SUM(precioFinal)AS Total_Orden FROM Detalle_OrdenCompra WHERE  Detalle_OrdenCompra.idOrden_Compra=@idOrdenCompra)
	WHERE idOrden_Compra=@idOrdenCompra

	--Actualizar stock de producto por venta
	UPDATE Producto
	SET stock=stock+@cantidad
	WHERE idProducto=@idProducto
GO

-- ======================================================
-- Ejecución de Procedimientos Almacenados
-- ======================================================

-- Ejecutar SP_Venta para registro de una Venta realizado por un usuario a un cliente
EXECUTE SP_Venta 'BOLETA','00001','6/04/2024','TARJETA','ACTIVO',1,1
EXECUTE SP_Venta 'BOLETA','00002','7/04/2024','EFECTIVO','ACTIVO',2,2
EXECUTE SP_Venta 'FACTURA','00001','8/04/2024','TARJETA','ACTIVO',3,4
EXECUTE SP_Venta 'FACTURA','00002','9/04/2024','TARJETA','ACTIVO',1,3

-- Ejecutar SP_DetalleVenta para registro de producto a una venta
EXECUTE SP_DetalleVenta 3,1,1
EXECUTE SP_DetalleVenta 2,1,2
EXECUTE SP_DetalleVenta 2,1,4
EXECUTE SP_DetalleVenta 1,2,1
EXECUTE SP_DetalleVenta 2,2,1
EXECUTE SP_DetalleVenta 4,3,4
EXECUTE SP_DetalleVenta 2,3,3
EXECUTE SP_DetalleVenta 2,4,1
EXECUTE SP_DetalleVenta 3,4,2
EXECUTE SP_DetalleVenta 1,4,3
GO

-- Ejecutar SP_OrdenCompra para registro de una Orden de Compra realizado por un usuario a un proveedor
EXECUTE SP_OrdenCompra'BOLETA','E0001','10/05/2024','EFECTIVO','ACTIVO',1,1
EXECUTE SP_OrdenCompra'FACTURA','F0001','11/05/2024','EFECTIVO','ACTIVO',2,2
EXECUTE SP_OrdenCompra'BOLETA','E0002','12/01/2024','EFECTIVO','EN PROCESO',2,1
EXECUTE SP_OrdenCompra'BOLETA','E0003','08/04/2024','EFECTIVO','ACTIVO',3,2
EXECUTE SP_OrdenCompra'BOLETA','E0004','11/04/2024','EFECTIVO','FINALIZADO',3,2
EXECUTE SP_OrdenCompra'BOLETA','E0005','10/04/2024','EFECTIVO','EN PROCESO',2,2
EXECUTE SP_OrdenCompra'BOLETA','E0006','09/03/2024','EFECTIVO','EN PROCESO',2,2
EXECUTE SP_OrdenCompra'FACTURA','E0007','01/01/2024','EFECTIVO','FINALIZADO',2,3
EXECUTE SP_OrdenCompra'FACTURA','E0008','08/03/2024','EFECTIVO','FINALIZADO',3,4
EXECUTE SP_OrdenCompra'FACTURA','E0009','12/03/2024','EFECTIVO','FINALIZADO',3,4
EXECUTE SP_OrdenCompra'FACTURA','E00010','04/04/2024','EFECTIVO','FINALIZADO',2,4
EXECUTE SP_OrdenCompra'FACTURA','E00011','09/04/2024','EFECTIVO','FINALIZADO',2,4

SELECT * FROM Orden_Compra
SELECT * FROM Detalle_OrdenCompra
SELECT * FROM Usuario
SELECT * FROM Proveedor

-- Ejecutar SP_DetalleOrdenCompra para registro de producto a una orden de compra
EXECUTE SP_DetalleOrdenCompra 10,10,1,1
EXECUTE SP_DetalleOrdenCompra 5,15,1,4
EXECUTE SP_DetalleOrdenCompra 25,15,2,4
EXECUTE SP_DetalleOrdenCompra 15,5,4,2
EXECUTE SP_DetalleOrdenCompra 12,8.20,5,2
EXECUTE SP_DetalleOrdenCompra 8,23,6,4
EXECUTE SP_DetalleOrdenCompra 12,8.50,7,3
EXECUTE SP_DetalleOrdenCompra 15,5,3,1
EXECUTE SP_DetalleOrdenCompra 5,13,8,7
EXECUTE SP_DetalleOrdenCompra 15,25,9,10
EXECUTE SP_DetalleOrdenCompra 10,39,10,11
EXECUTE SP_DetalleOrdenCompra 10,50,11,12
EXECUTE SP_DetalleOrdenCompra 5,65,12,13

-- ======================================================
-- Consulta de datos a las tablas
-- ======================================================

--Consulta sobre Usuario, Rol y Trabajador
SELECT u.nombreUsuario,u.contrasenia,u.estado,r.nombre AS Rol
 FROM Usuario u
    INNER JOIN Rol r ON u.idRol = r.idRol
GO

-- Consulta de Venta, Detalle Venta y productos
SELECT dv.idVenta, vt.tipoComprobante, vt.numComprobante, dv.cantidad ,p.nombreProducto,dv.precioFinal FROM Detalle_Venta dv  
INNER JOIN Venta vt ON vt.idVenta = dv.idVenta
INNER JOIN Producto p ON p.idProducto = dv.idProducto
GO

-- Consulta de Venta, cantidad de productos (DetalleVenta), usuario y cliente
SELECT dv.idVenta, c.nombre AS Cliente,vt.tipoComprobante, vt.numComprobante, SUM(dv.cantidad) AS Cantidad_Productos ,SUM(dv.precioFinal) TotalVenta FROM Detalle_Venta dv 
INNER JOIN Venta vt ON vt.idVenta = dv.idVenta
INNER JOIN Cliente c ON vt.idCliente =c.idCliente
GROUP BY c.nombre,dv.idVenta, vt.tipoComprobante, vt.numComprobante
ORDER BY 1
GO

-- Usuario que vendio mas en estado 'Activo' ordenado de mayor a menor por el total de Ventas
SELECT u.usuario,u.nombreUsuario, r.estado, SUM(v.total) As Venta_Total
FROM Usuario u 
	inner join rol r on u.idRol=r.idRol
	inner join Venta v on u.idUsuario=v.idUsuario
--where r.estado in ('Activo')
GROUP BY u.usuario,u.nombreUsuario, r.estado
ORDER BY 4 DESC

-- Usuario que vendio mas en estado 'Activo' ordenado de mayor a menor por el total de Orden Compra
SELECT u.usuario,u.nombreUsuario, r.estado,sum(v.total) As Total_ordeCompra
FROM Usuario u 
	inner join rol r on u.idRol=r.idRol
	inner join Orden_Compra v on u.idUsuario=v.idUsuario
WHERE r.estado in ('Activo')
GROUP BY u.usuario,u.nombreUsuario, r.estado
ORDER BY 4 DESC

--IDENTTFICAR LOS PROVEEDORES QUE COMPRAMOS LOS PRODUCTOS QUE COMIENCE CON LA LETRA "C"
select p.idProveedor,oc.numComprobante, p.nombre,doc.cantidad,doc.precio,doc.precioFinal, pro.nombreProducto from Proveedor p  
	inner join Orden_Compra oc on p.idProveedor = oc.idProveedor
	inner join Detalle_OrdenCompra doc on oc.idOrden_Compra=doc.idOrden_Compra
	inner join Producto pro on doc.idProducto = pro.idProducto
where pro.nombreProducto like 'C%'
group by p.idProveedor, p.nombre,oc.numComprobante,doc.cantidad,doc.precio,doc.precioFinal, pro.nombreProducto

--consulta de nombre junto con su categoria y precios
SELECT p.nombreProducto AS Product_Name, c.nombre AS Category, p.precio AS Price
FROM Producto p
INNER JOIN Categoria c ON p.idCategoria = c.idCategoria;

--consulta de monto total de ventas por tipo de pago

SELECT tipoPago, SUM(total) AS Monto_total_ventas
FROM Venta
GROUP BY tipoPago;

--Mostrar los trabajadores que están asignados a un rol específico:
SELECT
    nombreUsuario AS Usuario,
    r.nombre AS Rol
FROM
    Usuario t
INNER JOIN
    Rol rt ON t.idRol = rt.idRol
INNER JOIN
    Rol r ON rt.idRol = r.idRol
WHERE
    r.descripcion = 'Asesor de Ventas';

----  Total de ventas por cliente en un rango de fechas                                                                                                                                     SELECT
SELECT
	c.nombre AS Cliente,
    SUM(v.total) AS TotalComprado
FROM
    Venta as v
INNER JOIN
    Cliente c ON v.idCliente = c.idCliente
WHERE
    v.FechaEmision >= '2024-01-01' AND  v.FechaEmision <= '2024-12-31' 
GROUP BY
    c.nombre

--Obtener detalles de una orden de compra específica, incluidos los productos comprados
SELECT
    d.idDetalle_OrdenCompra AS ID_Detalle,
    p.nombreProducto AS Producto,
    d.cantidad AS Cantidad,
    d.precio AS Precio_Unitario,
    d.importe AS Importe_Total
FROM
    Detalle_OrdenCompra d
INNER JOIN
    Producto p ON d.idProducto = p.idProducto
WHERE
    d.idOrden_Compra = '1';



--Consulta de las ordenes de compra de un proveedor por fecha
select 
	 oc.idOrden_Compra as 'Codigo OC'
	,pv.nombre as 'Nombre Proveedor'
	,oc.numComprobante as 'Comprobante'
	,oc.fechaEmision
	,oc.estado as 'Fecha Emision'
	,c.nombre as 'Categoria'
	,m.nombre as 'Marca'
	,pd.nombreProducto as 'Producto'
	,pd.precio as 'Precio Unitario'
	,doc.cantidad as 'Cantidad'
	,doc.importe as 'Total'
	,doc.precioFinal as 'Total + IGV'
from Orden_Compra oc
inner join Proveedor pv on oc.idProveedor = pv.idProveedor
inner join Detalle_OrdenCompra doc on oc.idOrden_Compra = doc.idOrden_Compra
inner join Producto pd on doc.idProducto = pd.idProducto
inner join Marca m on m.idMarca = pd.idMarca
inner join Categoria c on c.idCategoria = pd.idCategoria	
where pv.numDocumento = '20125698451' and  oc.fechaEmision = '10/05/2024'
order by [Total + IGV] desc
go

----Consulta de la cantidad total productos por proveedor
select 
	distinct (pv.nombre) as 'Proveedor'
	,count(doc.cantidad) AS Cantidad_Productos
from Orden_Compra oc
inner join Detalle_OrdenCompra doc on oc.idOrden_Compra = doc.idOrden_Compra
inner join Proveedor pv on oc.idProveedor = pv.idProveedor
group by pv.nombre
go

--Consulta de Ordenes de compra en estado "EN PROCESO"  para conocer el total de dias transcurridos 
--que el proveedor está tardando para enviar los productos

SELECT oc.idProveedor, prov.nombre, prov.celular, oc.idOrden_Compra, oc.fechaEmision, datediff(DAY, oc.fechaEMision, GETDATE()) AS diasTranscurridos, oc.estado 
FROM Proveedor prov
INNER JOIN Orden_Compra oc ON oc.idProveedor =prov.idProveedor
WHERE oc.estado = 'EN PROCESO'

--Consulta el Stock mínimo de productos
SELECT prod.nombreProducto, prod.stock
FROM Producto prod
WHERE prod.stock < 30

--Consulta el promedio de ganacia por cada producto
SELECT  prod.nombreProducto, AVG((prod.precio*1.18)-(doc.precio*1.18)) AS promedio_ganancia
FROM Producto prod
INNER JOIN Detalle_OrdenCompra doc ON prod.idProducto = doc.idProducto
GROUP BY prod.nombreProducto;

