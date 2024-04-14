CREATE DATABASE dboFMVstore
GO

USE dboFMVstore
GO


CREATE TABLE Trabajador (
idTrabajador INT IDENTITY NOT NULL,
nombre VARCHAR(100) NULL,
tipoDocumento VARCHAR(20) NULL,
numDocumento VARCHAR(20) NULL,
sexo VARCHAR(15) NULL,
fechaNacimiento DATE NULL,
edad INT NULL,
email VARCHAR(100) NULL,
celular INT NULL,
direccion VARCHAR(100) NULL,
departamento VARCHAR(100) NULL,
provincia VARCHAR(100) NULL,
distrito VARCHAR(100) NULL,
estado VARCHAR(8) NULL,
CONSTRAINT PK_Trabajador PRIMARY KEY(idTrabajador)
)
GO


SET DATEFORMAT dmy
GO
INSERT INTO Trabajador VALUES('Maria Jose Quispe Arenas','DNI','74854695','Masculino','20/05/1999',25,'mquispe@hotmail.com',984516482,'Calle Nevado Huascaran','Lima','Lima','La Molina','Activo')
INSERT INTO Trabajador VALUES('Luisa Gabrila Gonzales Pachas','DNI','79648514','Femenino','20/05/2000',24,'lgonzales@gmail.com',984758152,'Jr Los Pinos','Lima','Lima','La Victoria','Activo')
INSERT INTO Trabajador VALUES('Manuel Teodoro Marquez Ramirez','DNI','76524982','Masculino','20/05/1995',29,'mtmramirez@hotmail.com',965248173,'Las Flores','Lima','Lima','San Juan de Lurigancho','Activo')
GO

SELECT * FROM Trabajador
GO

CREATE TABLE Cliente (
idCliente INT IDENTITY NOT NULL,
nombre VARCHAR(100) NULL,
tipoDocumento VARCHAR(20) NULL,
numDocumento VARCHAR(20) NULL,
sexo VARCHAR(15) NULL,
fechaNacimiento DATE NULL,
edad INT NULL,
email VARCHAR(100) NULL,
celular INT NULL,
direccion VARCHAR(100) NULL,
departamento VARCHAR(100) NULL,
provincia VARCHAR(100) NULL,
distrito VARCHAR(100) NULL,
CONSTRAINT PK_Cliente PRIMARY KEY(idCliente)
)
GO

SET DATEFORMAT dmy
GO
INSERT INTO Cliente VALUES('Gianina Maria Pilar Vasquez','DNI','79653264','Femenino','2/07/2000',24,'mpvasquez@gmail.com',987548721,'Las Malvinas','Lima','Lima','Lima')
INSERT INTO Cliente VALUES('Ismael Gael Quiroz Barraza','CE','72654418','Masculino','10/09/1995',29,'gquirozb@hotmail.com',963532684,'Las Flores','Lima','Lima','Ate Vitarte')
INSERT INTO Cliente VALUES('Esperanza Ramirez Zevallos','DNI','73458127','Femenino','20/05/2002',22,'erzevallos@gmail.com',965800820,'Jr. Abancay 23','Lima','Lima','La Victoria')
INSERT INTO Cliente VALUES('Antonio Cartagena Miranda','CE','74753684','Masculino','10/09/1995',29,'acmrianda@hotmail.com',948751249,'Av. Larco 2367','Lima','Lima','Miraflores')
GO

SELECT * FROM Cliente
GO

CREATE TABLE Proveedor (
idProveedor INT IDENTITY NOT NULL,
nombre VARCHAR(100) NULL,
tipoDocumento VARCHAR(20) NULL,
numDocumento VARCHAR(20) NULL,
email VARCHAR(100) NULL,
celular INT NULL,
direccion VARCHAR(100) NULL,
departamento VARCHAR(100) NULL,
provincia VARCHAR(100) NULL,
distrito VARCHAR(100) NULL,
estado VARCHAR(8) NULL,
CONSTRAINT PK_Proveedor PRIMARY KEY(idProveedor)
)
GO

INSERT INTO Proveedor VALUES('BellezaRadiante S.A.C.','RUC',20125698451,'bellezarsac@hotmail.com',967845249,'Miguel Grau','Lima','Lima','Lima','Activo')
INSERT INTO Proveedor VALUES('GlamourCosmetics E.I.R.L.','RUC',20137856214,'gcosmeticeirl@hotmail.com',967845201,'Avenida la Peruanidad','Lima','Lima','Jesus Maria','Activo')
GO

SELECT * FROM Proveedor
GO

CREATE TABLE Marca (
idMarca INT IDENTITY NOT NULL,
nombre VARCHAR(30) NULL,
CONSTRAINT PK_Marca PRIMARY KEY(idMarca)
)
GO

INSERT INTO Marca VALUES('Unique')
INSERT INTO Marca VALUES('Yanbal')
INSERT INTO Marca VALUES('Esika')
GO

SELECT * FROM Marca
GO

CREATE TABLE Categoria (
idCategoria INT IDENTITY NOT NULL,
nombre VARCHAR(30) NULL,
CONSTRAINT PK_idCategoria PRIMARY KEY(idCategoria)
)
GO

INSERT INTO Categoria VALUES('Maquillaje')
INSERT INTO Categoria VALUES('Fragancias')
INSERT INTO Categoria VALUES('Piel')
GO

SELECT * FROM Categoria
GO


CREATE TABLE Rol (
idRol INT IDENTITY NOT NULL,
nombre VARCHAR(30) NULL,
descripcion VARCHAR(100) NULL,
estado VARCHAR(8) NULL
CONSTRAINT PK_Rol PRIMARY KEY(idRol)
)
GO

INSERT INTO Rol VALUES('Administrador','Administrador del sistema','Activo')
INSERT INTO Rol VALUES('Asesor','Asesor de ventas','Activo')
INSERT INTO Rol VALUES('Cajero','Cajero de tienda','Activo')
GO

SELECT * FROM Rol
GO

CREATE TABLE Producto (
idProducto INT IDENTITY NOT NULL,
nombreProducto VARCHAR(100) NULL,
precio DECIMAL(18,2) NULL,
stock INT NULL,
idMarca INT NULL,
idCategoria INT NULL,
CONSTRAINT PK_Producto PRIMARY KEY(idProducto),
CONSTRAINT FK_Producto_Marca FOREIGN KEY (idMarca) REFERENCES Marca(idMarca),
CONSTRAINT FK_Producto_Categoria FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria)
)
GO

INSERT INTO Producto VALUES('Correctores',12.5,20,1,1)
INSERT INTO Producto VALUES('Rubores',9,10,2,1)
INSERT INTO Producto VALUES('Perfume ',23,18,2,2)
INSERT INTO Producto VALUES('Colonia',11,22,1,2)
GO

SELECT * FROM Producto
GO

SELECT p.nombreProducto,p.precio,p.stock,m.nombre AS Marca,c.nombre AS Categoria
 FROM Producto p
    INNER JOIN Marca m ON p.idMarca = m.idMarca
	INNER JOIN Categoria c ON p.idCategoria = c.idCategoria
GO
  
CREATE TABLE Usuario (
idUsuario INT IDENTITY NOT NULL,
nombreUsuario VARCHAR(30) NULL,
contrasenia VARCHAR(100) NULL,
estado VARCHAR(8) NULL,
idRol INT NULL,
idTrabajador INT NULL,
CONSTRAINT PK_Usuario PRIMARY KEY(idUsuario),
CONSTRAINT FK_Usuario_Rol FOREIGN KEY (idRol) REFERENCES Rol(idRol),
CONSTRAINT FK_Usuario_Trabajador FOREIGN KEY (idTrabajador) REFERENCES Trabajador(idTrabajador)
)
GO

INSERT INTO Usuario VALUES('Majo','majo024','Activo',1,1)
INSERT INTO Usuario VALUES('Luga','luga2024','Activo',2,1)
GO

SELECT * FROM Usuario
GO

SELECT u.nombreUsuario,u.contrasenia,u.estado,r.nombre AS Rol,t.nombre AS Trabajador
 FROM Usuario u
    INNER JOIN Rol r ON u.idRol = r.idRol
	INNER JOIN Trabajador t ON u.idTrabajador = t.idTrabajador
GO
 

--Tabla de Venta u  Orden de Venta
CREATE TABLE Venta (
idVenta INT IDENTITY NOT NULL,
tipoComprobante VARCHAR(7) NULL,
numComprobante VARCHAR(20) NULL,
fechaEmision DATE NULL,
tipoPago VARCHAR(8) NULL,
total  DECIMAL(18,2) NULL,
estado VARCHAR(8) NULL,
idUsuario INT NULL,
idCliente INT NULL,
CONSTRAINT PK_Venta PRIMARY KEY(idVenta),
CONSTRAINT FK_Venta_Usuario FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
CONSTRAINT FK_Venta_Cliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
)
GO

SELECT * FROM Venta
GO

--Insertamos un primer valor de pruebas de Venta
INSERT INTO Venta(tipoComprobante,numComprobante,fechaEmision,tipoPago,estado,idUsuario,idCliente)
VALUES('BOLETA','00001','6/04/2024','TARJETA','ACTIVO',1,1)

/*

INSERT INTO Venta VALUES('BOLETA','00002','8/04/2024','EFECTIVO',3,'ACTIVO',1,1,2)
INSERT INTO Venta VALUES('BOLETA','00002','8/04/2024','EFECTIVO',2,'ACTIVO',1,2,2)
INSERT INTO Venta VALUES('BOLETA','00002','8/04/2024','EFECTIVO',3,'ACTIVO',1,3,2)
INSERT INTO Venta VALUES('BOLETA','00002','8/04/2024','EFECTIVO',2,'ACTIVO',1,4,2)

--INSERT INTO Venta VALUES('BOLETA','00002','Activo',2,1)
INSERT INTO Venta VALUES('FACTURA','00001','1/02/2024','EFECTIVO',1,'ACTIVO',1,2,1)
GO
*/

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

-- Ejecutar SP_Venta para registro de una Venta realizado por un usuario a un cliente
EXECUTE SP_Venta 'BOLETA','00001','6/04/2024','TARJETA','ACTIVO',1,1
EXECUTE SP_Venta 'BOLETA','00002','7/04/2024','EFECTIVO','ACTIVO',2,2
EXECUTE SP_Venta 'FACTURA','00001','8/04/2024','TARJETA','ACTIVO',1,4
EXECUTE SP_Venta 'FACTURA','00002','8/04/2024','TARJETA','ACTIVO',1,5

SELECT * FROM Venta


--Tabla de Detalle de Venta // Especifica el contenido de la boleta // Operadores logicos
CREATE TABLE Detalle_Venta (
idDetalle_Venta INT IDENTITY NOT NULL,
cantidad INT NULL,
importe DECIMAL(18,2) NULL,
igv DECIMAL(18,2) NULL,
precioFinal AS (importe+igv),
idVenta INT NULL,
idProducto INT NULL,
CONSTRAINT PK_DetalleVenta PRIMARY KEY(idDetalle_Venta),
CONSTRAINT FK_DetalleVenta_Venta FOREIGN KEY (idVenta) REFERENCES Venta(idVenta),
CONSTRAINT FK_DetalleVenta_Producto FOREIGN KEY (idProducto) REFERENCES Producto(idProducto)
)
GO


--INSERT INTO Venta SELECT * FROM Detalle_Venta dv INNER JOIN Producto p ON dv.idProducto=p.idProducto  
GO

--Procedimiento para almacenar registro de un producto a una determinada venta
CREATE PROCEDURE SP_DetalleVenta
@cantidad INT,
@idVenta INT,
@idProducto INT
AS
    -- Insertar el nuevo detalle de venta
    INSERT INTO Detalle_Venta (cantidad, idVenta, idProducto)
    VALUES (@cantidad, @idVenta, @idProducto);
    -- Calcular el subtotal, IGV y precio final
    UPDATE dv
    SET dv.importe = dv.cantidad * p.precio,
        dv.igv = (dv.cantidad * p.precio) * 0.18
    FROM Detalle_Venta dv
    INNER JOIN Producto p ON dv.idProducto = p.idProducto
    WHERE dv.idVenta = @idVenta;
	UPDATE Venta 
	SET total = (SELECT SUM(precioFinal)AS Total_Venta FROM Detalle_Venta WHERE  Detalle_Venta.idVenta=@idVenta)
	WHERE idVenta=@idVenta
	--Actualizar stock de venta de producto
	UPDATE Producto
	SET stock=stock-@cantidad
	WHERE idProducto=@idProducto
GO
-- Ejecutar SP_DetalleVenta para registro de producto a una venta
EXECUTE SP_DetalleVenta 2,2,1
GO

-- Consulta de Venta, Detalle Venta y productos
SELECT dv.idVenta, vt.tipoComprobante, vt.numComprobante, dv.cantidad ,p.nombreProducto,dv.precioFinal FROM Detalle_Venta dv  
INNER JOIN Venta vt ON vt.idVenta = dv.idVenta
INNER JOIN Producto p ON p.idProducto = dv.idProducto
GO

-- Consulta de Venta, cantidad de productos (DetalleVenta), usuario y cliente
SELECT dv.idVenta, vt.tipoComprobante, vt.numComprobante, COUNT(dv.cantidad) AS Cantidad ,SUM(dv.precioFinal) TotalVenta FROM Detalle_Venta dv 
INNER JOIN Venta vt ON vt.idVenta = dv.idVenta
GROUP BY dv.idVenta, vt.tipoComprobante, vt.numComprobante
GO

DROP PROCEDURE SP_DetalleVenta
GO

SELECT * FROM Producto
SELECT * FROM Detalle_Venta
SELECT * FROM Venta

SELECT * FROM Venta
GO


DROP TABLE Venta
DROP TABLE Detalle_Venta
GO


--Tabla de Orden de compra a Proveedores
CREATE TABLE Orden_Compra (
idOrden_Compra INT IDENTITY NOT NULL,
tipoComprobante VARCHAR(7) NULL,
numComprobante VARCHAR(20) NULL,
fechaEmision DATE NULL,
cantidad INT NULL,
precio DECIMAL(18,0) NULL,
idUsuario INT NULL,
idProveedoor INT NULL,
CONSTRAINT PK_OrdenCompra PRIMARY KEY(idOrden_Compra),
CONSTRAINT FK_OrdenCompra_Usuario FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
CONSTRAINT FK_OrdenCompra_Proveedor FOREIGN KEY (idProveedoor) REFERENCES Proveedor(idProveedor)
)
GO

SELECT * FROM Orden_Compra
GO

--Detalle de Compra con Proveedores
CREATE TABLE Detalle_OrdenCompra (
idDetalle_OrdenCompra INT IDENTITY NOT NULL,
tipoComprobante VARCHAR(7) NULL,
numComprobante VARCHAR(20) NULL,
cantidad INT NULL,
subtotal DECIMAL(18,0) NULL,
igv DECIMAL(18,0) NULL,
precioFinal AS (subtotal+igv),
idOrden_Compra INT NULL,
idProducto INT NULL,
CONSTRAINT PK_DetalleOrdenCompra PRIMARY KEY(idDetalle_OrdenCompra),
CONSTRAINT FK_DetalleOrdenCompra_OrdenCompra FOREIGN KEY (idOrden_Compra) REFERENCES Orden_Compra(idOrden_Compra),
CONSTRAINT FK_DetalleOrdenCompra_Producto FOREIGN KEY (idProducto) REFERENCES Producto(idProducto)
)
GO



