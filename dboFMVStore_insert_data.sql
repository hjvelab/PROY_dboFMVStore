-- ======================================================
-- Base de Datos - FMStore
-- ======================================================
USE dboFMVstore
GO

-- Cambiamos de el formato de fecha
SET DATEFORMAT dmy
GO

-- ======================================================
-- Insertar Datos a las Tablas
-- ======================================================

-- Insertamos datos a la tabla Cliente
INSERT INTO Cliente VALUES('Gianina Maria Pilar Vasquez','DNI','79653264','Femenino','2/07/2000','mpvasquez@gmail.com',987548721,'Las Malvinas','Lima','Lima','Lima')
INSERT INTO Cliente VALUES('Ismael Gael Quiroz Barraza','CE','72654418','Masculino','10/09/1995','gquirozb@hotmail.com',963532684,'Las Flores','Lima','Lima','Ate Vitarte')
INSERT INTO Cliente VALUES('Esperanza Ramirez Zevallos','DNI','73458127','Femenino','20/05/2002','erzevallos@gmail.com',965800820,'Jr. Abancay 23','Lima','Lima','La Victoria')
INSERT INTO Cliente VALUES('Antonio Cartagena Miranda','CE','74753684','Masculino','10/09/1995','acmrianda@hotmail.com',948751249,'Av. Larco 2367','Lima','Lima','Miraflores')
INSERT INTO Cliente VALUES('Jackeline Alban Chuquipoma','DNI','75687841','Femenino','5/09/2002','jalvanc@hotmail.com',947448121,'Los  Girasoles','Lima','Lima','Lima')

INSERT INTO Cliente VALUES('Vanesa Amanqui Condori','DNI','43082118','Femenino','12/01/1993','vamanqui@hotmail.com',987453127,'Cl. Magdalena Mena','Lima','Lima','Lima')
INSERT INTO Cliente VALUES('Gianina Alvarez Ochoa','DNI','31234567','Femenino','01/01/2005','g.alvarez@hotmail.com',976545214,'Calle Alcanfores 230','Lima','Lima','Comas')
INSERT INTO Cliente VALUES('Liz Calle Ugarte','DNI','32456789','Femenino','15/05/1997','l.calle@hotmail.com',987624956,'Av. Colectora 156','Arequipa','Arequipa','Cerro Colorado')
INSERT INTO Cliente VALUES('Margarita Montalvan Rivera','DNI','33567890','Femenino','28/09/1995','m.montalvan@hotmail.com',998704698,'Av. Pacasmayo S/N','Callao','Callao','La Perla')
INSERT INTO Cliente VALUES('Javier Quispe Lopez','DNI','34890123','Masculino','03/07/1994','j.quispe@hotmail.com',912358466,'Calle Francisco Bolognesi','Lima','Lima','Comas')

INSERT INTO Cliente VALUES('Maria Fernandez Sanchez','DNI','35789012','Femenino','19/11/1992','m.fernandez@hotmail.com',932547895,'Av. Caceres 852','Lima','Lima','Los Olivos')
INSERT INTO Cliente VALUES('Ana Garcia Perez','DNI','36456789','Femenino','05/08/1990','a.garcia@hotmail.com',952737324,'Jr. Jose de San Martin ','Lima','Lima','Ate Vitarte')
INSERT INTO Cliente VALUES('Laura Rodriguez Flores','DNI','37456789','Femenino','05/08/1990','l.rodriguez@hotmail.com',972926753,'Av. 2 de Marzo ','Lima','Lima','Surco')
INSERT INTO Cliente VALUES('Karen Gonzalez Diaz','DNI','38490123','Femenino','14/12/1989','k.gonzalez@hotmail.com',993116182,'Sta. Rosa 563','Lima','Lima','Lince')
INSERT INTO Cliente VALUES('Patricia Lopez Castro','DNI','39456789','Femenino','14/12/1988','p.lopez@hotmail.com',976585214,'Av. Lima 785','Lima','Lima','Carabayllo')

INSERT INTO Cliente VALUES('Rosa Martinez Vega','DNI','40345678','Femenino','09/09/1987','r.martinez@hotmail.com',982624956,'Av. El Sol 634','Lima','Lima','Ate Vitarte')
INSERT INTO Cliente VALUES('Julia Perez Ruiz','DNI','41456789','Femenino','18/01/1986','j.perez@hotmail.com',998704660,'Av. Inca 584','Lima','Lima','Surco')
INSERT INTO Cliente VALUES('Vanessa Diaz Torres','DNI','42456789','Femenino','22/06/1985','v.diaz@hotmail.com',912358333,'Jr. Alca 789','Callao','Callao','La Perla')
INSERT INTO Cliente VALUES('Monica Sanchez Gomez','DNI','43456789','Femenino','03/11/1984','m.sanchez@hotmail.com',932227895,'Jr. Puno 986','Lima','Lima','Carabayllo')
INSERT INTO Cliente VALUES('Silvia Vasquez Lopez','DNI','44456789','Femenino','15/03/1983','s.vasquez@hotmail.com',952766624,'Calle Alcanfores 231','Lima','Lima','Comas')

INSERT INTO Cliente VALUES('Diana Torres Ramirez','DNI','45456789','Femenino','28/07/1982','d.torres@hotmail.com',936926753,'Av. Colectora 157','Lima','Lima','Los Olivos')
INSERT INTO Cliente VALUES('Pedro Garcia Flores','DNI','46456789','Masculino','09/12/1981','p.garcia@hotmail.com',993915182,'Av. Pacasmayo S/N','Lima','Lima','Ate Vitarte')
INSERT INTO Cliente VALUES('Paola Castillo Rodriguez','DNI','47456789','Femenino','19/04/1980','p.castillo@hotmail.com',977895214,'Calle Francisco Bolognesi','Lima','Lima','Surco')
INSERT INTO Cliente VALUES('Maribel Flores Gutierrez','DNI','48456789','Femenino','01/09/1979','m.flores@hotmail.com',987325956,'Av. Caceres 853','Lima','Lima','Lince')
INSERT INTO Cliente VALUES('Lucia Gutierrez Garcia','DNI','49456789','Femenino','12/07/1978','l.gutierrez@hotmail.com',998706438,'Jr. Jose de San Martin ','Lima','Lima','Carabayllo')

INSERT INTO Cliente VALUES('Sofia Ramirez Torres','DNI','51456789','Femenino','22/01/1991','s.ramirez@hotmail.com',932556395,'Sta. Rosa 564','Lima','Lima','Surco')
INSERT INTO Cliente VALUES('Carlos Perez Rojas','DNI','51456790','Masculino','1988-05-15','c.perez@gmail.com',987654321,'Av. Peru 123','Lima','Lima','San Isidro')
INSERT INTO Cliente VALUES('Lucia Gomez Martinez','DNI','51456791','Femenino','1993-03-12','l.gomez@hotmail.com',912345678,'Jr. Puno 456','Lima','Lima','Miraflores')
INSERT INTO Cliente VALUES('Juan Torres Sanchez','DNI','51456792','Masculino','1990-08-23','j.torres@gmail.com',956789432,'Av. Brasil 789','Lima','Lima','Breña')

INSERT INTO Cliente VALUES('Ana Lopez Fernandez','DNI','51456793','Femenino','1992-11-30','a.lopez@hotmail.com',934567890,'Calle Lima 123','Lima','Lima','Barranco')
INSERT INTO Cliente VALUES('Pedro Chavez Aguilar','DNI','51456794','Masculino','1985-07-19','p.chavez@gmail.com',978654321,'Av. Arequipa 456','Lima','Lima','San Borja')
INSERT INTO Cliente VALUES('Maria Vega Torres','DNI','51456795','Femenino','1989-09-25','m.vega@hotmail.com',912345678,'Jr. Cusco 789','Lima','Lima','La Molina')
INSERT INTO Cliente VALUES('Luis Ramirez Gomez','DNI','51456796','Masculino','1994-02-10','l.ramirez@gmail.com',934567890,'Av. Angamos 123','Lima','Lima','San Miguel')
INSERT INTO Cliente VALUES('Patricia Martinez Diaz','DNI','51456797','Femenino','1991-04-18','p.martinez@hotmail.com',956789432,'Calle Puno 456','Lima','Lima','Surquillo')

INSERT INTO Cliente VALUES('Jorge Fernandez Lopez','DNI','51456798','Masculino','1987-06-22','j.fernandez@gmail.com',978654321,'Av. Grau 789','Lima','Lima','Magdalena')
INSERT INTO Cliente VALUES('Carla Rojas Chavez','DNI','51456799','Femenino','1995-03-11','c.rojas@hotmail.com',912345678,'Jr. Amazonas 123','Lima','Lima','Lince')
INSERT INTO Cliente VALUES('Oscar Medina Torres','DNI','51456800','Masculino','1986-12-29','o.medina@gmail.com',934567890,'Av. La Marina 456','Lima','Lima','Pueblo Libre')
INSERT INTO Cliente VALUES('Elena Castro Flores','DNI','51456801','Femenino','1990-10-15','e.castro@hotmail.com',956789432,'Calle Los Olivos 789','Lima','Lima','Jesus Maria')
INSERT INTO Cliente VALUES('Ricardo Torres Gomez','DNI','51456802','Masculino','1988-01-17','r.torres@gmail.com',978654321,'Av. Javier Prado 123','Lima','Lima','Rimac')

INSERT INTO Cliente VALUES('Monica Paredes Sanchez','DNI','51456803','Femenino','1992-07-13','m.paredes@hotmail.com',912345678,'Jr. Tarapaca 456','Lima','Lima','San Luis')
INSERT INTO Cliente VALUES('Gonzalo Silva Aguilar','DNI','51456804','Masculino','1989-11-05','g.silva@gmail.com',934567890,'Av. Venezuela 789','Lima','Lima','Villa Maria del Triunfo')
INSERT INTO Cliente VALUES('Adriana Quispe Diaz','DNI','51456805','Femenino','1993-05-21','a.quispe@hotmail.com',956789432,'Calle Alcanfores 123','Lima','Lima','Cercado de Lima')
INSERT INTO Cliente VALUES('Victor Ramos Torres','DNI','51456806','Masculino','1987-09-03','v.ramos@gmail.com',978654321,'Av. Javier Prado 456','Lima','Lima','Chorrillos')
INSERT INTO Cliente VALUES('Diana Sanchez Paredes','DNI','51456807','Femenino','1994-12-02','d.sanchez@hotmail.com',912345678,'Jr. Lampa 789','Lima','Lima','Santa Anita')

GO

-- Insertamos datos a la tabla Proveedor
INSERT INTO Proveedor VALUES('BellezaRadiante S.A.C.','RUC',20125698451,'bellezarsac@hotmail.com',967845249,'Miguel Grau','Lima','Lima','Lima','Activo')
INSERT INTO Proveedor VALUES('GlamourCosmetics E.I.R.L.','RUC',20137856214,'gcosmeticeirl@hotmail.com',967845201,'Avenida la Peruanidad','Lima','Lima','Jesus Maria','Activo')
INSERT INTO Proveedor VALUES('ImportadoraShiale S.A.C.','RUC',20107865218,'shialesac@hotmail.com',949257896,'Inambari 731','Lima','Lima','Lince','Activo')
INSERT INTO Proveedor VALUES('DistribuidoraCosmetic S.A.C.','RUC',20070765259,'cosmneticsac@hotmail.com',986782451,'Las Flores','Lima','Lima','Surco','Activo')
INSERT INTO Proveedor VALUES('EstiloCosmetic S.A.C.','RUC',20484967845,'estilosac@gmail.com',923589648,'Jr Cuzco 765','Lima','Lima','Lince','Activo')
INSERT INTO Proveedor VALUES('EstiloCosmetic S.A.C.', 'RUC', 20484967845, 'estilosac@gmail.com', 923589648, 'Jr Cuzco 765', 'Lima', 'Lima', 'Lince', 'Activo')

INSERT INTO Proveedor VALUES('Natur Del Valle S.A.C.', 'RUC', 20484967846, 'bellezanatural@gmail.com', 923589649, 'Av Arequipa 123', 'Lima', 'Lima', 'Miraflores', 'Activo')
INSERT INTO Proveedor VALUES('CosméticaElegante S.A.C.', 'RUC', 20484967847, 'cosmeticaelegante@gmail.com', 923589650, 'Av Salaverry 456', 'Lima', 'Lima', 'San Isidro', 'Activo')
INSERT INTO Proveedor VALUES('MaquillajePerfecto S.A.C.', 'RUC', 20484967848, 'maquillajeperfecto@gmail.com', 923589651, 'Jr Puno 789', 'Lima', 'Lima', 'Jesús María', 'Activo')
INSERT INTO Proveedor VALUES('PielRadiante S.A.C.', 'RUC', 20484967849, 'pielradiante@gmail.com', 923589652, 'Av Javier Prado 101', 'Lima', 'Lima', 'San Borja', 'Activo')
INSERT INTO Proveedor VALUES('EstiloModerno S.A.C.', 'RUC', 20484967850, 'estilomoderno@gmail.com', 923589653, 'Av Benavides 234', 'Lima', 'Lima', 'Surco', 'Activo')
INSERT INTO Proveedor VALUES('BellezaTotal S.A.C.', 'RUC', 20484967851, 'bellezatotal@gmail.com', 923589654, 'Jr Carabaya 567', 'Lima', 'Lima', 'Cercado', 'Activo')

INSERT INTO Proveedor VALUES('CosméticosLuxe S.A.C.', 'RUC', 20484967852, 'cosmeticosluxe@gmail.com', 923589655, 'Av Universitaria 890', 'Lima', 'Lima', 'San Miguel', 'Activo')
INSERT INTO Proveedor VALUES('BellezaPremium S.A.C.', 'RUC', 20484967853, 'bellezapremium@gmail.com', 923589656, 'Jr Huancavelica 111', 'Lima', 'Lima', 'Rímac', 'Activo')
INSERT INTO Proveedor VALUES('EstiloChic S.A.C.', 'RUC', 20484967854, 'estilochic@gmail.com', 923589657, 'Av Petit Thouars 222', 'Lima', 'Lima', 'Lince', 'Activo')
INSERT INTO Proveedor VALUES('CosméticosTrend S.A.C.', 'RUC', 20484967855, 'cosmeticostrend@gmail.com', 923589658, 'Av La Marina 333', 'Lima', 'Lima', 'San Miguel', 'Activo')
INSERT INTO Proveedor VALUES('BellezaÚnica S.A.C.', 'RUC', 20484967856, 'bellezaunica@gmail.com', 923589659, 'Av Brasil 444', 'Lima', 'Lima', 'Magdalena', 'Activo')

INSERT INTO Proveedor VALUES('CosméticaPremium S.A.C.', 'RUC', 20484967857, 'cosmeticapremium@gmail.com', 923589660, 'Jr Moquegua 555', 'Lima', 'Lima', 'Breña', 'Activo')
INSERT INTO Proveedor VALUES('EstiloExclusivo S.A.C.', 'RUC', 20484967858, 'estiloexclusivo@gmail.com', 923589661, 'Av Arenales 666', 'Lima', 'Lima', 'Lince', 'Activo')
INSERT INTO Proveedor VALUES('BellezaElegante S.A.C.', 'RUC', 20484967859, 'bellezaelegante@gmail.com', 923589662, 'Jr Ancash 777', 'Lima', 'Lima', 'Barrios Altos', 'Activo')
INSERT INTO Proveedor VALUES('CosméticosGlam S.A.C.', 'RUC', 20484967860, 'cosmeticosglam@gmail.com', 923589663, 'Av San Felipe 888', 'Lima', 'Lima', 'Jesús María', 'Activo')
INSERT INTO Proveedor VALUES('BellezaTrendy S.A.C.', 'RUC', 20484967861, 'bellezatrendy@gmail.com', 923589664, 'Jr Callao 999', 'Lima', 'Lima', 'Cercado', 'Activo')

INSERT INTO Proveedor VALUES('CosméticosDivinos S.A.C.', 'RUC', 20484967862, 'cosmeticosdivinos@gmail.com', 923589665, 'Av Venezuela 1010', 'Lima', 'Lima', 'Breña', 'Activo')
INSERT INTO Proveedor VALUES('BellezaNaturalPlus S.A.C.', 'RUC', 20484967863, 'bellezanaturalplus@gmail.com', 923589666, 'Jr Junín 1111', 'Lima', 'Lima', 'Magdalena', 'Activo')
INSERT INTO Proveedor VALUES('CosméticosSelect S.A.C.', 'RUC', 20484967864, 'cosmeticosselect@gmail.com', 923589667, 'Av Abancay 1212', 'Lima', 'Lima', 'San Borja', 'Activo')

GO

-- Insertamos datos a la tabla Rol
INSERT INTO Rol VALUES('Administrador','Administrador del Sistema','Activo')
INSERT INTO Rol VALUES('Jefe de Ventas','Jefe/Encargado de ventas','Activo')
INSERT INTO Rol VALUES('Asesor de Ventas','Asesor de ventas','Activo')
GO

--Insertamos datos a la tabla Usuario
INSERT INTO Usuario VALUES('Majo','majo024','Maria Jose Quispe Arenas','DNI','74854695','mquispe@hotmail.com',984516482,'Activo',3)
INSERT INTO Usuario VALUES('Luga','luga2024','Luisa Gabrila Gonzales Pachas','DNI','79648514','lgonzales@gmail.com',984758152,'Activo',3)
INSERT INTO Usuario VALUES('Mate','mate2024','Manuel Teodoro Marquez Ramirez','DNI','76524982','mtmramirez@hotmail.com',965248173,'Activo',3)
INSERT INTO Usuario VALUES('Mate', 'mate2024', 'Manuel Teodoro Marquez Ramirez', 'DNI', '76524982', 'mtmramirez@hotmail.com', 965248173, 'Activo', 3)
INSERT INTO Usuario VALUES('Luna', 'luna2024', 'Laura Natalia López Fernández', 'DNI', '76524983', 'lnlopez@hotmail.com', 965248174, 'Activo', 3)

INSERT INTO Usuario VALUES('Sol', 'sol2024', 'Santiago Andrés Villanueva Rojas', 'DNI', '76524984', 'savillanueva@hotmail.com', 965248175, 'Activo', 3)
INSERT INTO Usuario VALUES('Estrella', 'estrella2024', 'Estefanía Mercedes Gómez Díaz', 'DNI', '76524985', 'emgomez@hotmail.com', 965248176, 'Activo', 3)
INSERT INTO Usuario VALUES('Mar', 'mar2024', 'María Teresa Pérez Castillo', 'DNI', '76524986', 'mtperez@hotmail.com', 965248177, 'Activo', 3)
INSERT INTO Usuario VALUES('Cielo', 'cielo2024', 'Carlos Antonio Ramírez Mendoza', 'DNI', '76524987', 'caramirez@hotmail.com', 965248178, 'Activo', 3)
INSERT INTO Usuario VALUES('Nube', 'nube2024', 'Nuria Isabel Torres Sánchez', 'DNI', '76524988', 'nitorres@hotmail.com', 965248179, 'Activo', 3)

INSERT INTO Usuario VALUES('Río', 'rio2024', 'Ricardo Javier Muñoz García', 'DNI', '76524989', 'rjmunoz@hotmail.com', 965248180, 'Activo', 3)
INSERT INTO Usuario VALUES('Montaña', 'montaña2024', 'Mónica Alejandra Castillo Vega', 'DNI', '76524990', 'macastillo@hotmail.com', 965248181, 'Activo', 3)
INSERT INTO Usuario VALUES('Valle', 'valle2024', 'Valeria Gabriela Ortiz Herrera', 'DNI', '76524991', 'vgortiz@hotmail.com', 965248182, 'Activo', 3)
GO

--Insertamos datos a la tabla Marca
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
INSERT INTO Marca VALUES('L''BEL')
INSERT INTO Marca VALUES('Maskerrade')
INSERT INTO Marca VALUES('Luis Vilton')
GO

--Insertamos datos a la tabla Categoria
INSERT INTO Categoria VALUES('Maquillaje')
INSERT INTO Categoria VALUES('Fragancias')

INSERT INTO Categoria VALUES('Piel')
INSERT INTO Categoria VALUES('Cuidado Facial')
INSERT INTO Categoria VALUES('Cuidado del Cabello')

INSERT INTO Categoria VALUES('Uñas')
INSERT INTO Categoria VALUES('Perfumes')
INSERT INTO Categoria VALUES('Cuidado Corporal')
INSERT INTO Categoria VALUES('Higiene Personal')
INSERT INTO Categoria VALUES('Accesorios de Belleza')

INSERT INTO Categoria VALUES('Tratamientos Anti-edad')
INSERT INTO Categoria VALUES('Protección Solar')
INSERT INTO Categoria VALUES('Exfoliantes')
INSERT INTO Categoria VALUES('Hidratantes')
INSERT INTO Categoria VALUES('Mascarillas Faciales')

INSERT INTO Categoria VALUES('Tónicos Faciales')
INSERT INTO Categoria VALUES('Aceites Esenciales')
INSERT INTO Categoria VALUES('Productos Naturales')
INSERT INTO Categoria VALUES('Cuidado de la Barba')
INSERT INTO Categoria VALUES('Cuidado de los Labios')
GO

--Insertamos datos a la tabla Producto

-- Categoría 1: Maquillaje
INSERT INTO Producto VALUES('Correctores',12.5,20,1,1)
INSERT INTO Producto VALUES('Rubores',9,10,2,1)
INSERT INTO Producto VALUES('Labial',12.90,15,6,1)
INSERT INTO Producto VALUES('Lapiz de ojos',9.90,18,8,1)
INSERT INTO Producto VALUES('Rimel',15.90,25,9,1)
INSERT INTO Producto VALUES('Base líquida',30,20,8,1)
INSERT INTO Producto VALUES('Rizador de pestañas',65,25,3,1)

-- Categoría 2: Fragancias
INSERT INTO Producto VALUES('Perf Lorrel',23,18,2,2)
INSERT INTO Producto VALUES('Colonia Floreal',11,22,1,2)
INSERT INTO Producto VALUES('Alpha Perf for Men',59.90,15,3,2)
INSERT INTO Producto VALUES('Vibranza Vanidad',59.90,19,3,2)
INSERT INTO Producto VALUES('Hydrux Lefrangce',39.90,20,10,2)
INSERT INTO Producto VALUES('Contex Spyral',29.90,40,11,2)
INSERT INTO Producto VALUES('Block n Liv',49.90,28,10,2)

-- Dice: INSERT INTO Producto (nombre, precio, stock, categoria_id, proveedor_id) VALUES
-- Debe decir: INSERT INTO Producto (nombre, precio, stock, marca_id, categoria_id) VALUES

-- Categoría 3: Piel
INSERT INTO Producto VALUES('Crema Hidratante', 15.0, 50, 1, 3)
INSERT INTO Producto VALUES('Sérum Facial', 20.0, 30, 2, 3)
INSERT INTO Producto VALUES('Limpiador Facial', 10.0, 40, 3, 3)
INSERT INTO Producto VALUES('Tónico Facial', 12.0, 35, 4, 3)
INSERT INTO Producto VALUES('Mascarilla Facial', 8.0, 25, 5, 3)

-- Categoría 4: Cuidado Facial
INSERT INTO Producto VALUES('Crema Antiarrugas', 25.0, 20, 1, 4)
INSERT INTO Producto VALUES('Contorno de Ojos', 18.0, 30, 2, 4)
INSERT INTO Producto VALUES('Crema de Día', 22.0, 25, 3, 4)
INSERT INTO Producto VALUES('Crema de Noche', 24.0, 20, 4, 4)
INSERT INTO Producto VALUES('Protector Solar Facial', 16.0, 30, 5, 4)

-- Categoría 5: Maquillaje
INSERT INTO Producto VALUES('Base de Maquillaje', 12.0, 40, 1, 5)
INSERT INTO Producto VALUES('Correctores', 12.5, 20, 2, 5)
INSERT INTO Producto VALUES('Rubor', 14.0, 35, 3, 5)
INSERT INTO Producto VALUES('Sombras de Ojos', 18.0, 25, 4, 5)
INSERT INTO Producto VALUES('Máscara de Pestañas', 15.0, 30, 5, 5)

-- Categoría 6: Cuidado del Cabello
INSERT INTO Producto VALUES('Shampoo', 10.0, 50, 1, 6)
INSERT INTO Producto VALUES('Acondicionador', 11.0, 40, 2, 6)
INSERT INTO Producto VALUES('Mascarilla Capilar', 15.0, 25, 3, 6)
INSERT INTO Producto VALUES('Aceite para el Cabello', 20.0, 20, 4, 6)
INSERT INTO Producto VALUES('Spray para el Cabello', 12.0, 30,5, 6)

-- Categoría 7: Uñas
INSERT INTO Producto VALUES('Esmalte de Uñas', 8.0, 60, 1, 7)
INSERT INTO Producto VALUES('Removedor de Esmalte', 6.0, 50, 2, 7)
INSERT INTO Producto VALUES('Lima de Uñas', 3.0, 70, 3, 7)
INSERT INTO Producto VALUES('Cortauñas', 4.0, 60, 4, 7)
INSERT INTO Producto VALUES('Tratamiento para Uñas', 10.0, 40, 5, 7)

-- Categoría 8: Perfumes
INSERT INTO Producto VALUES('Perfume Floral', 35.0, 15, 1, 8)
INSERT INTO Producto VALUES('Perfume Cítrico', 30.0, 20, 2, 8)
INSERT INTO Producto VALUES('Perfume Amaderado', 40.0, 10, 3, 8)
INSERT INTO Producto VALUES('Perfume Dulce', 32.0, 25, 4, 8)
INSERT INTO Producto VALUES('Perfume Fresco', 28.0, 30, 5, 8)

-- Categoría 9: Cuidado Corporal
INSERT INTO Producto VALUES('Crema Corporal', 15.0, 35, 1, 9)
INSERT INTO Producto VALUES('Gel de Ducha', 10.0, 40, 2, 9)
INSERT INTO Producto VALUES('Exfoliante Corporal', 12.0, 30, 3, 9)
INSERT INTO Producto VALUES('Aceite Corporal', 18.0, 20, 4, 9)
INSERT INTO Producto VALUES('Loción Corporal', 14.0, 25, 5, 9)

-- Categoría 10: Higiene Personal
INSERT INTO Producto VALUES('Desodorante', 8.0, 50, 1, 10)
INSERT INTO Producto VALUES('Jabón Líquido', 6.0, 40, 2, 10)
INSERT INTO Producto VALUES('Pasta de Dientes', 4.0, 60, 3, 10)
INSERT INTO Producto VALUES('Enjuague Bucal', 7.0, 35, 4, 10)
INSERT INTO Producto VALUES('Gel Antibacterial', 5.0, 50, 5, 10)

-- Categoría 11: Accesorios de Belleza
INSERT INTO Producto VALUES('Brocha de Maquillaje', 8.0, 50, 1, 11) 
INSERT INTO Producto VALUES('Esponja de Maquillaje', 5.0, 60, 2, 11)
INSERT INTO Producto VALUES('Pinza de Cejas', 3.0, 70, 3, 11)
INSERT INTO Producto VALUES('Espejo de Mano', 10.0, 40, 4, 11)
INSERT INTO Producto VALUES('Organizador de Maquillaje', 15.0, 30, 5, 11)

-- Categoría 12: Tratamientos Anti-edad
INSERT INTO Producto VALUES('Sérum Anti-edad', 25.0, 20, 1, 12)
INSERT INTO Producto VALUES('Crema Reafirmante', 28.0, 15, 2, 12)
INSERT INTO Producto VALUES('Ampollas Anti-edad', 30.0, 10, 3, 12)
INSERT INTO Producto VALUES('Contorno de Ojos Anti-edad', 22.0, 25, 4, 12)
INSERT INTO Producto VALUES('Mascarilla Anti-edad', 18.0, 30, 5, 12)

-- Categoría 13: Protección Solar
INSERT INTO Producto VALUES('Protector Solar Corporal', 20.0, 25, 1, 13)
INSERT INTO Producto VALUES('Protector Solar para Niños', 18.0, 30, 2, 13)
INSERT INTO Producto VALUES('Protector Solar en Spray', 22.0, 20, 3, 13)
INSERT INTO Producto VALUES('Protector Solar en Gel', 19.0, 25, 4, 13)
INSERT INTO Producto VALUES('Protector Solar Resistente al Agua', 25.0, 15, 5, 13)

-- Categoría 14: Exfoliantes
INSERT INTO Producto VALUES('Exfoliante Facial', 12.0, 30, 1, 14)
INSERT INTO Producto VALUES('Exfoliante Corporal', 14.0, 25, 2, 14)
INSERT INTO Producto VALUES('Exfoliante de Labios', 8.0, 40, 3, 14)
INSERT INTO Producto VALUES('Exfoliante para Pies', 10.0, 35, 4, 14)
INSERT INTO Producto VALUES('Exfoliante de Manos', 11.0, 30, 5, 14)

-- Categoría 15: Hidratantes
INSERT INTO Producto VALUES('Crema Hidratante Facial', 15.0, 40, 1, 15)
INSERT INTO Producto VALUES('Crema Hidratante Corporal', 18.0, 35, 2, 15)
INSERT INTO Producto VALUES('Hidratante de Manos', 10.0, 50, 3, 15)
INSERT INTO Producto VALUES('Hidratante de Pies', 12.0, 40, 4, 15)
INSERT INTO Producto VALUES('Hidratante Labial', 8.0, 60, 5, 15)

-- Categoría 16: Mascarillas Faciales
INSERT INTO Producto VALUES('Mascarilla de Arcilla', 10.0, 40, 1, 16)
INSERT INTO Producto VALUES('Mascarilla de Carbón', 12.0, 30, 2, 16)
INSERT INTO Producto VALUES('Mascarilla Hidratante', 14.0, 25, 3, 16)
INSERT INTO Producto VALUES('Mascarilla Anti-edad', 16.0, 20, 4, 16)
INSERT INTO Producto VALUES('Mascarilla Purificante', 11.0, 35, 5, 16)

-- Categoría 17: Tónicos Faciales
INSERT INTO Producto VALUES('Tónico Astringente', 10.0, 40, 1, 17)
INSERT INTO Producto VALUES('Tónico Hidratante', 12.0, 35, 2, 17)
INSERT INTO Producto VALUES('Tónico Calmante', 14.0, 30, 3, 17)
INSERT INTO Producto VALUES('Tónico Reafirmante', 16.0, 25, 4, 17)
INSERT INTO Producto VALUES('Tónico Revitalizante', 18.0, 20, 5, 17)

-- Categoría 18: Aceites Esenciales
INSERT INTO Producto VALUES('Aceite de Lavanda', 12.0, 30, 1, 18)
INSERT INTO Producto VALUES('Aceite de Rosa Mosqueta', 14.0, 25, 2, 18)
INSERT INTO Producto VALUES('Aceite de Árbol de Té', 10.0, 40, 3, 18)
INSERT INTO Producto VALUES('Aceite de Coco', 8.0, 50, 4, 18)
INSERT INTO Producto VALUES('Aceite de Almendras', 9.0, 45, 5, 18)

-- Categoría 19: Productos Naturales
INSERT INTO Producto VALUES('Jabón Natural', 6.0, 50, 1, 19)
INSERT INTO Producto VALUES('Champú Natural', 10.0, 40, 2, 19)
INSERT INTO Producto VALUES('Desodorante Natural', 8.0, 35, 3, 19)

GO

-- ======================================================
-- Procedimientos Almacenados
-- ======================================================

--Harly Vela
--Procedimiento Almacenado que sirve para registrar una nueva venta
CREATE PROCEDURE SP_Venta
@tipoComprobante VARCHAR(7),
@numComprobante VARCHAR(20),
@fechaEmision DATE,
@tipoPago VARCHAR(8),
@estado VARCHAR(8),
@idUsuario INT,
@idCliente INT
AS
	SET NOCOUNT ON;
	INSERT INTO Venta(tipoComprobante,numComprobante,fechaEmision,tipoPago,estado,idUsuario,idCliente)
	VALUES (@tipoComprobante,@numComprobante,@fechaEmision,@tipoPago,@estado,@idUsuario,@idCliente)
GO

--Harly Vela
--Procedimiento Almacenado para agregar a la tabla Detalle_Venta una cantidad de producto y id producto a una determinada venta
CREATE PROCEDURE SP_DetalleVenta
@cantidad INT,
@idVenta INT,
@idProducto INT
AS
	SET NOCOUNT ON;
    INSERT INTO Detalle_Venta (cantidad, idVenta, idProducto)
    VALUES (@cantidad, @idVenta, @idProducto);
GO

--Harly Vela
--Procedimiento Almacenado que sirve para registrar una nueva Orden_Compra
CREATE PROCEDURE SP_OrdenCompra
@tipoComprobante VARCHAR(7),
@numComprobante VARCHAR(20),
@fechaEmision DATE,
@tipoPago VARCHAR(8),
@estado VARCHAR(12),
@idUsuario INT,
@idProveedor INT
AS
	SET NOCOUNT ON;
	INSERT INTO Orden_Compra(tipoComprobante,numComprobante,fechaEmision,tipoPago,estado,idUsuario,idProveedor)
	VALUES (@tipoComprobante,@numComprobante,@fechaEmision,@tipoPago,@estado,@idUsuario,@idProveedor)
GO

--Harly Vela
--Procedimiento Almacenado para agregar a la tabla Orden_Compra una cantidad de producto, precio de venta del producto y id producto a una determinada Orden_Compra
CREATE PROCEDURE SP_DetalleOrdenCompra
@cantidad INT,
@precio DECIMAL(18,2),
@idOrdenCompra INT,
@idProducto INT
AS
    -- Insertar el nuevo detalle de venta
    INSERT INTO Detalle_OrdenCompra(cantidad, precio, idOrden_Compra, idProducto)
    VALUES (@cantidad, @precio,@idOrdenCompra, @idProducto);
GO


--Katherine Esteban
--SP TABLA PROVEEDOR: PERMITE INSERTAR LOS DATOS DEL PROVEEDOR
CREATE PROCEDURE SP_IngresarProveedor
@nombre VARCHAR(100),
@TipoDocumento VARCHAR(20),
@numDocumento VARCHAR(20),
@email VARCHAR(100),
@celular INT,
@direccion VARCHAR(100),
@departamento VARCHAR(100),
@provincia VARCHAR(100),
@distrito VARCHAR(100)
AS
    
    INSERT INTO Proveedor(nombre,tipoDocumento,numDocumento,email,celular,direccion,departamento,provincia,distrito)
    VALUES (@nombre,@TipoDocumento,@numDocumento,@email,@celular,@direccion,@departamento,@provincia,@distrito);
GO

--Susan Llano
--SP DE CONSULTA DE PRODUCTOS QUE COMIENZE CON INICIALES A ELEGIR ------

CREATE PROCEDURE Usp_BUSQUEDA_PRODPxPROVEEDOR_CON_INICIALES @Nombre_Producto varchar(5)='%'
AS
BEGIN
	SELECT PROV.idProveedor, OC.numComprobante, PROV.nombre, DOC.cantidad, DOC.precio, DOC.precioFinal, PROD.nombreProducto
	FROM [dbo].[Proveedor] PROV
	JOIN [dbo].[Orden_Compra] OC ON PROV.idProveedor=OC.idProveedor
	JOIN [dbo].[Detalle_OrdenCompra] DOC ON OC.idOrden_Compra=DOC.idOrden_Compra
	JOIN [dbo].[Producto] PROD ON DOC.idProducto = PROD.idProducto
	WHERE PROD.nombreProducto LIKE @Nombre_Producto
	GROUP BY PROV.idProveedor, OC.numComprobante, PROV.nombre, DOC.cantidad, DOC.precio, DOC.precioFinal, PROD.nombreProducto
END

--Susan Llano
--SP DE REGISTRO DE USUARIO
CREATE PROCEDURE SP_USUARIO
@USUARIO VARCHAR(30),
@CONTRASENIA VARCHAR(100),
@NOMBREUSUARIO VARCHAR(100),
@TIPODOCUMENTO VARCHAR(20),
@NUMDOCUMENTO VARCHAR(20),
@EMAIL VARCHAR(100),
@CELULAR INT,
@ESTADO VARCHAR (8),
@IDROL INT
AS
BEGIN
	INSERT INTO Usuario(usuario,contrasenia,nombreUsuario,tipoDocumento,numDocumento,email,celular,estado,idRol)
	VALUES (@USUARIO,@CONTRASENIA,@NOMBREUSUARIO,@TIPODOCUMENTO,@NUMDOCUMENTO,@EMAIL,@CELULAR,@ESTADO,@IDROL)
END

--Jamyle 
--SP de Actualizar Precio del Producto
CREATE PROCEDURE ActualizarPrecioProducto
    @idProducto INT,
    @NuevoPrecio DECIMAL(10, 2)
AS
BEGIN
    UPDATE Producto
    SET Precio = @NuevoPrecio
    WHERE idProducto = @idProducto
END

--Eveling Castillo 
--Procedimiento almacenado que recupera la lista de productos con sus cantidades vendidas dentro de un rango de fechas espec�fico
CREATE PROCEDURE SP_ProductosVendidos
@startDate DATE,
@endDate DATE
AS
BEGIN
    SELECT 
        p.nombreProducto AS ProductNombre,
        SUM(dv.cantidad) AS TotalCantidadVendida
    FROM 
        Detalle_Venta dv
    INNER JOIN 
        Producto p ON dv.idProducto = p.idProducto
    INNER JOIN 
        Venta v ON dv.idVenta = v.idVenta
    WHERE 
        v.fechaEmision BETWEEN @startDate AND @endDate
    GROUP BY 
        p.nombreProducto;
END

--Christian Ccasa
--PROCEDURE =  Registro de un nuevo prodcuto
CREATE PROCEDURE SP_PRODUCTO_REGISTRO_NUEVO
    @Nombre VARCHAR(100),
	@Precio DECIMAL(18, 2),
	@Stock INT,
	@IdMarca INT,
	@IdCategoria INT,
	@IdProducto INT OUTPUT
AS
BEGIN
	INSERT INTO [dbo].[Producto] ([nombreProducto],[precio],[stock],[idMarca],[idCategoria])
		   VALUES (@Nombre,@Precio,@Stock,@IdMarca,@IdCategoria)

	SELECT @IdProducto = SCOPE_IDENTITY();
END
GO

-- ======================================================
-- TRIGGER / Disparadores
-- ======================================================

--Harly Vela
--Trigger que sirve para actualizar las ventas, importe e igv del producto del detalle de venta.
CREATE TRIGGER TRG_detalle_ventas
ON Detalle_Venta
AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON
	--Declaramos el idVenta con la fila insertada
	DECLARE @idVenta int
	SET @idventa = (SELECT idVenta FROM inserted);
	
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

--Harly Vela
--Trigger que sirve para actualizar las ordenes de compra, stock de producto
CREATE TRIGGER TRG_detalle_OrdenCompra
ON Detalle_OrdenCompra
AFTER INSERT
AS
BEGIN

	-- PENDIENTE CORREGIR EL TRIGGER
	SET NOCOUNT ON
	--Declaramos el idVenta con la fila insertada
	DECLARE @idOrden_Compra int
	SET @idOrden_Compra = (SELECT idOrden_Compra FROM inserted);
	
	--Calcula y actualiza el igv del detalle de la orden de compra
	UPDATE doc
    SET doc.igv = (doc.cantidad*doc.precio)*0.18
    FROM Detalle_OrdenCompra doc
    WHERE doc.idOrden_Compra = @idOrden_Compra;
	PRINT'Detalle_OrdenCompra: Actualizado'

	--Declaramos la sumatoria del precioFinal mediante el idVenta declarado desde la tabla detalle
	DECLARE @subtotal money
	SET @subtotal = (SELECT SUM(precioFinal)AS Total_Orden FROM Detalle_OrdenCompra WHERE  Detalle_OrdenCompra.idOrden_Compra=@idOrden_Compra)
	PRINT'Subtotal: Check'

	--Actualiza el total de la orden de compra con la suma del detalle_orden_compra
	UPDATE Orden_Compra SET [total]=@subtotal WHERE [idOrden_Compra]=@idOrden_Compra
	PRINT'Orden: Actualizado'

	--Verificamos el estado de la orden y su detalle
	SELECT * FROM Orden_Compra WHERE [idOrden_Compra]=@idOrden_Compra
	SELECT * FROM Detalle_OrdenCompra WHERE [idOrden_Compra]=@idOrden_Compra

END

--Jamyle
--Trigger que sirve para actualizar los productos luego de insertarlo en la tabla detalle
CREATE TRIGGER ActualizarStockDespuesVenta
ON Detalle_Venta
AFTER INSERT
AS
BEGIN
    UPDATE Producto
    SET stock = stock - i.Cantidad
    FROM Producto p
    JOIN inserted i ON p.idProducto = i.idProducto
END

--Jamyle
--Trigger para Registrar Cambios en el Historial de Precios:
CREATE TRIGGER RegistrarCambioPrecio
ON Producto
AFTER UPDATE
AS
BEGIN
    IF UPDATE(precio)
    BEGIN
        INSERT INTO HistorialPrecios(idProducto, PrecioAnterior, PrecioNuevo, FechaCambio)
        SELECT i.idProducto, d.precio, i.precio, GETDATE()
        FROM inserted i
        JOIN deleted d ON i.idProducto = d.idProducto
	END
END

-- TRIGGER: Evita que se registren ventas de productos con stock insuficiente
CREATE TRIGGER TRG_ControlStockInsuficiente
ON Detalle_Venta
AFTER INSERT
AS
BEGIN
    -- No devuelve filas afectadas
    SET NOCOUNT ON;

    DECLARE @idProducto INT, @cantidad INT, @stockDisponible INT
    
    -- Obtener los datos de la venta reci�n insertada
	SET @idProducto =  (SELECT idProducto FROM inserted);
	SET @cantidad =  (SELECT cantidad FROM inserted);

    -- Obtener el stock disponible del producto
    SET @stockDisponible = (SELECT stock FROM Producto WHERE idProducto = @idProducto);

    -- Verificar si hay suficiente stock para la venta
    IF @cantidad > @stockDisponible
    BEGIN
        PRINT 'No hay suficiente stock para el producto seleccionado.';
        ROLLBACK TRANSACTION
    END
END

--Katherine Esteban
--TRIGGER: PERMITE DETERMINAR LA EDAD DEL CLIENTE, EN CASO SEA MENOR DE 18 A�OS NO SE PODR� REGISTRAR EL CLIENTE.
CREATE TRIGGER TRG_actualizaEdad
ON Cliente
AFTER INSERT
AS
BEGIN
	--No devuelve filas afectadas
	SET NOCOUNT ON

	--Declaramos el idVenta con la fila insertada
	DECLARE @fechaNacimiento DATE
	DECLARE @Edad INT
	SET @fechaNacimiento = (SELECT fechaNacimiento FROM inserted)
	
	
	SET @edad = floor(
	(cast(convert(varchar(8),getdate(),112) as int)-
	cast(convert(varchar(8),@fechaNacimiento,112) as int) ) / 10000
	) 
	IF @edad<18  BEGIN
	PRINT'Menor de edad'
	ROLLBACK TRANSACTION
	END
END
GO

--Katherine Esteban
--TRIGGER QUE NO PERMITE ELIMINAR REGISTROS DE LA TABLA VENTAS
CREATE TRIGGER TRG_NoAnularBoleta
ON Venta
INSTEAD OF DELETE
AS
BEGIN
	--No devuelve filas afectadas
	SET NOCOUNT ON
	
	PRINT'No est� permitido eliminar registros de esta tabla'
	ROLLBACK TRANSACTION
END

--Susan Llano
--TRIGGER QUE NO PERMITE ELIMINAR NINGUN REGISTRO DE DETALLE VENTA
CREATE TRIGGER TGR_Restringir_Eliminacion
ON Detalle_Venta
INSTEAD OF DELETE
AS
BEGIN
    RAISERROR  ('No se permite la eliminaci�n de registros en detalle_venta.', 16, 1)
END

--Susan Llano
--TRIGGER que actualiza el estado de los proveedores inactivos si no han vendido mas de 3 meses
CREATE TRIGGER TRG_Proveedor_Activo_Inactivo
ON Orden_Compra
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @FechaLimite DATE;
    SET @FechaLimite = DATEADD(MONTH, -3, GETDATE());

    UPDATE Proveedor
    SET estado = CASE 
                    WHEN EXISTS (SELECT 1 FROM Orden_Compra WHERE Proveedor.idProveedor = Orden_Compra.idProveedor AND fechaEmision >= @FechaLimite) THEN 'Activo'
                    ELSE 'Inactivo'
                END
    FROM Proveedor
    WHERE Proveedor.idProveedor IN (SELECT idProveedor FROM inserted)
          OR Proveedor.idProveedor IN (SELECT idProveedor FROM deleted);
END


-- Trigger para establecer el estado del usuario como "Activo" despu�s de insertar un nuevo usuario
CREATE TRIGGER TRG_EstablecerEstadoUsuario
ON Usuario
AFTER INSERT
AS
BEGIN
    -- Actualizar el estado del usuario a "Activo"
    UPDATE Usuario
    SET estado = 'Activo'
    WHERE idUsuario IN (SELECT idUsuario FROM inserted);
END;

--Christian Ccasa
--TRIGGER = VERIFICAR QUE EL STOCK MINIMO DEL PRODUCTO INSERTADO SEA IGUAL MAYOR a 20
CREATE OR ALTER TRIGGER VerificarStockMinimo
ON Producto
AFTER INSERT
AS
BEGIN
	DECLARE @MinimoPermitido INT;
    SELECT @MinimoPermitido = 20;

	IF EXISTS (
        SELECT 1 FROM inserted WHERE stock < @MinimoPermitido
    )
    BEGIN
        RAISERROR ('El valor ingresado es menor que el m�nimo permitido.', 16, 1)
        ROLLBACK TRANSACTION;
    END
END
GO

--Christian Ccasa
--TRIGGER = RESTRINGIR LA ELIMINACION DE UN PRODUCTO CON STOCK MAYOR A CERO
CREATE OR ALTER TRIGGER EliminarProductoConStock
ON Producto
INSTEAD OF DELETE
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM deleted WHERE stock > 0
    )
	BEGIN
        RAISERROR ('El producto aun tiene stock mayor a 0, no es posible eliminarlo', 16, 1)
    END
    ELSE
    BEGIN
       DELETE FROM Producto WHERE idProducto IN (SELECT idProducto FROM deleted);
    END

END
GO

-- ======================================================
-- Ejecuci�n de Procedimientos Almacenados
-- ======================================================

-- Ejecutar SP_Venta para registro de una Venta realizado por un usuario a un cliente
EXECUTE SP_Venta 'BOLETA','00001','6/04/2024','TARJETA','ACTIVO',1,1
EXECUTE SP_Venta 'BOLETA','00002','7/04/2024','EFECTIVO','ACTIVO',2,2
EXECUTE SP_Venta 'FACTURA','00001','8/04/2024','TARJETA','ACTIVO',3,4
EXECUTE SP_Venta 'FACTURA','00002','9/04/2024','TARJETA','ACTIVO',1,3
EXECUTE SP_Venta'BOLETA','00003','25/02/2023','EFECTIVO','ACTIVO',1,5
EXECUTE SP_Venta'BOLETA','00004','02/03/2023','TARJETA','ACTIVO',2,6
EXECUTE SP_Venta'BOLETA','00005','07/03/2023','EFECTIVO','ACTIVO',3,3
EXECUTE SP_Venta'BOLETA','00006','12/03/2023','TARJETA','ACTIVO',3,8
EXECUTE SP_Venta'BOLETA','00007','17/03/2023','EFECTIVO','ACTIVO',3,4
EXECUTE SP_Venta'BOLETA','00008','22/03/2023','TARJETA','ACTIVO',3,3
EXECUTE SP_Venta'BOLETA','00009','27/03/2023','EFECTIVO','ACTIVO',3,2
EXECUTE SP_Venta'BOLETA','00010','01/04/2023','TARJETA','ACTIVO',3,12
EXECUTE SP_Venta'BOLETA','00011','06/04/2023','EFECTIVO','ACTIVO',3,13
EXECUTE SP_Venta'BOLETA','00012','11/04/2023','TARJETA','ACTIVO',3,14
EXECUTE SP_Venta'BOLETA','00013','16/04/2023','EFECTIVO','ACTIVO',3,15
EXECUTE SP_Venta'BOLETA','00014','21/04/2023','TARJETA','ACTIVO',3,1
EXECUTE SP_Venta'BOLETA','00015','26/04/2023','EFECTIVO','ACTIVO',3,17
EXECUTE SP_Venta'BOLETA','00016','1/05/2023','TARJETA','ACTIVO',3,18
EXECUTE SP_Venta'BOLETA','00017','6/05/2023','EFECTIVO','ACTIVO',3,1
EXECUTE SP_Venta'BOLETA','00018','11/05/2023','TARJETA','ACTIVO',3,20
EXECUTE SP_Venta'BOLETA','00019','16/05/2023','EFECTIVO','ACTIVO',3,10
EXECUTE SP_Venta'BOLETA','00020','21/05/2023','TARJETA','ACTIVO',3,22
EXECUTE SP_Venta'BOLETA','00021','20/07/2023','EFECTIVO','ACTIVO',3,13
EXECUTE SP_Venta'BOLETA','00022','25/08/2023','TARJETA','ACTIVO',3,2
EXECUTE SP_Venta'BOLETA','00023','30/08/2023','EFECTIVO','ACTIVO',3,20
EXECUTE SP_Venta'BOLETA','00024','05/09/2023','TARJETA','ACTIVO',3,6
EXECUTE SP_Venta'BOLETA','00025','10/11/2023','EFECTIVO','ACTIVO',3,2
EXECUTE SP_Venta'BOLETA','00026','13/03/2024','TARJETA','ACTIVO',3,1
EXECUTE SP_Venta'BOLETA','00027','27/03/2024','EFECTIVO','ACTIVO',3,12
EXECUTE SP_Venta'BOLETA','00028','10/04/2024','TARJETA','ACTIVO',3,3
EXECUTE SP_Venta'BOLETA','00029','24/04/2024','EFECTIVO','ACTIVO',3,10
EXECUTE SP_Venta'BOLETA','00030','27/04/2024','TARJETA','ACTIVO',3,3
EXECUTE SP_Venta'BOLETA','00031','30/04/2024','EFECTIVO','ACTIVO',3,5

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
EXECUTE SP_DetalleVenta 2,6,14
EXECUTE SP_DetalleVenta 1,6,3
EXECUTE SP_DetalleVenta 1,3,14
EXECUTE SP_DetalleVenta 2,6,1
EXECUTE SP_DetalleVenta 1,8,14
EXECUTE SP_DetalleVenta 2,6,11
EXECUTE SP_DetalleVenta 1,5,3
EXECUTE SP_DetalleVenta 1,9,14
EXECUTE SP_DetalleVenta 1,6,4
EXECUTE SP_DetalleVenta 1,8,14
EXECUTE SP_DetalleVenta 2,10,11
EXECUTE SP_DetalleVenta 1,3,11
EXECUTE SP_DetalleVenta 2,7,14
EXECUTE SP_DetalleVenta 3,31,1
EXECUTE SP_DetalleVenta 6,30,5
EXECUTE SP_DetalleVenta 2,29,14
EXECUTE SP_DetalleVenta 1,28,14
EXECUTE SP_DetalleVenta 2,27,11
EXECUTE SP_DetalleVenta 1,26,12
EXECUTE SP_DetalleVenta 1,25,10
EXECUTE SP_DetalleVenta 1,24,14
EXECUTE SP_DetalleVenta 1,23,13
EXECUTE SP_DetalleVenta 4,22,6
EXECUTE SP_DetalleVenta 1,29,7
EXECUTE SP_DetalleVenta 2,30,14
EXECUTE SP_DetalleVenta 1,32,3
EXECUTE SP_DetalleVenta 1,33,14
EXECUTE SP_DetalleVenta 1,11,14
EXECUTE SP_DetalleVenta 2,12,11

--EJEMPLO DE EJECUCION DE SP DETALLE DE VENTA (cantidad, idVenta, idProducto)
-- ======================================
EXECUTE SP_DetalleVenta 1,13,3
SELECT * FROM Producto WHERE Producto.idProducto=3
-- ======================================

EXECUTE SP_DetalleVenta 1,13,1
SELECT * FROM Producto WHERE Producto.idProducto=1
-- ======================================

EXECUTE SP_DetalleVenta 1,14,14
EXECUTE SP_DetalleVenta 1,15,4
EXECUTE SP_DetalleVenta 1,16,14
EXECUTE SP_DetalleVenta 2,17,11
EXECUTE SP_DetalleVenta 1,18,11
EXECUTE SP_DetalleVenta 2,19,14
EXECUTE SP_DetalleVenta 5,19,1
EXECUTE SP_DetalleVenta 6,21,5
EXECUTE SP_DetalleVenta 1,20,14
EXECUTE SP_DetalleVenta 1,21,14
GO

SELECT * FROM Producto

-- Ejecutar SP_OrdenCompra para registro de una Orden de Compra realizado por un usuario a un proveedor
EXECUTE SP_OrdenCompra 'BOLETA','E0001','10/05/2024','EFECTIVO','ACTIVO',1,1
EXECUTE SP_OrdenCompra 'FACTURA','F0001','11/05/2024','EFECTIVO','ACTIVO',2,2
EXECUTE SP_OrdenCompra 'BOLETA','E0002','12/01/2024','EFECTIVO','EN PROCESO',2,1
EXECUTE SP_OrdenCompra 'BOLETA','E0003','08/04/2024','EFECTIVO','ACTIVO',3,2
EXECUTE SP_OrdenCompra 'BOLETA','E0004','11/04/2024','EFECTIVO','FINALIZADO',3,2
EXECUTE SP_OrdenCompra 'BOLETA','E0005','10/04/2024','EFECTIVO','EN PROCESO',2,2
EXECUTE SP_OrdenCompra 'BOLETA','E0006','09/03/2024','EFECTIVO','EN PROCESO',2,2
EXECUTE SP_OrdenCompra 'BOLETA','E0007','26/04/2023','EFECTIVO', 'FINALIZADO',2,4
EXECUTE SP_OrdenCompra 'BOLETA','E0008','06/05/2023','EFECTIVO', 'FINALIZADO',3,1
EXECUTE SP_OrdenCompra 'BOLETA','E0009','03/01/2024','EFECTIVO', 'FINALIZADO',1,4
EXECUTE SP_OrdenCompra 'BOLETA','E0010','28/02/2024','EFECTIVO','ACTIVO',3,2
EXECUTE SP_OrdenCompra 'BOLETA','E0011','10/04/2024','EFECTIVO','EN PROCESO',2,3
EXECUTE SP_OrdenCompra 'FACTURA','F0002','01/01/2024','EFECTIVO','FINALIZADO',2,3
EXECUTE SP_OrdenCompra 'FACTURA','F0003','08/03/2024','EFECTIVO','FINALIZADO',3,4
EXECUTE SP_OrdenCompra 'FACTURA','F0004','12/03/2024','EFECTIVO','FINALIZADO',3,4
EXECUTE SP_OrdenCompra 'FACTURA','F0005','04/04/2024','EFECTIVO','FINALIZADO',2,4
EXECUTE SP_OrdenCompra 'FACTURA','F0006','09/04/2024','EFECTIVO','FINALIZADO',2,4
EXECUTE SP_OrdenCompra 'FACTURA','F0007','08/04/2024','EFECTIVO','FINALIZADO',2,4
EXECUTE SP_OrdenCompra 'FACTURA','F0008','12/03/2023','EFECTIVO', 'FINALIZADO',2,1
EXECUTE SP_OrdenCompra 'FACTURA','F0009','21/04/2023','EFECTIVO', 'FINALIZADO',2,4
EXECUTE SP_OrdenCompra 'FACTURA','F0010','01/05/2023','EFECTIVO', 'FINALIZADO',3,3
EXECUTE SP_OrdenCompra 'FACTURA','F0011','11/05/2023','EFECTIVO', 'FINALIZADO',3,4
EXECUTE SP_OrdenCompra 'FACTURA','F0012','16/05/2023','EFECTIVO', 'FINALIZADO',3,2
EXECUTE SP_OrdenCompra 'FACTURA','F0013','20/12/2023','EFECTIVO', 'FINALIZADO',3,4
EXECUTE SP_OrdenCompra 'FACTURA','F0014','17/01/2024','EFECTIVO', 'FINALIZADO',1,3
EXECUTE SP_OrdenCompra 'FACTURA','F0015','31/01/2024','EFECTIVO','ACTIVO',	1,1
EXECUTE SP_OrdenCompra 'FACTURA','F0016','14/02/2024','EFECTIVO','FINALIZADO',2,1
EXECUTE SP_OrdenCompra 'FACTURA','F0017','13/03/2024','EFECTIVO','EN PROCESO',1,2
EXECUTE SP_OrdenCompra 'FACTURA','F0018','27/03/2024','EFECTIVO','EN PROCESO',3,4
EXECUTE SP_OrdenCompra 'FACTURA','F0019','24/04/2024','EFECTIVO','EN PROCESO',3,1
EXECUTE SP_OrdenCompra 'FACTURA','F0020','27/04/2024','EFECTIVO','EN PROCESO',2,4
EXECUTE SP_OrdenCompra 'FACTURA','F0021','30/04/2024','EFECTIVO','EN PROCESO',2,2

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
EXECUTE SP_DetalleOrdenCompra 25,15,13,2
EXECUTE SP_DetalleOrdenCompra 15 , 15.9 , 14 , 7
EXECUTE SP_DetalleOrdenCompra  5 , 59.9 , 15 , 13
EXECUTE SP_DetalleOrdenCompra  20 , 9.9 , 16 , 6
EXECUTE SP_DetalleOrdenCompra  25 , 15.9 , 17 , 7
EXECUTE SP_DetalleOrdenCompra  13 , 30 , 18 , 8
EXECUTE SP_DetalleOrdenCompra  17 , 15.9 , 19 , 7
EXECUTE SP_DetalleOrdenCompra  28 , 12.9 , 20 , 5
EXECUTE SP_DetalleOrdenCompra  30 , 12.9 , 21 , 5
EXECUTE SP_DetalleOrdenCompra  15 , 12.5 , 21 , 1
EXECUTE SP_DetalleOrdenCompra  5 , 65 , 22 , 14
EXECUTE SP_DetalleOrdenCompra  20 , 9.9 , 23 , 6
EXECUTE SP_DetalleOrdenCompra  25 , 12.9 , 24 , 5
EXECUTE SP_DetalleOrdenCompra  13 , 30 , 25 , 8
EXECUTE SP_DetalleOrdenCompra  17 , 15.9 , 26 , 7
EXECUTE SP_DetalleOrdenCompra  28 , 12.9 , 27 , 5
EXECUTE SP_DetalleOrdenCompra  30 , 12.9 , 28 , 5
EXECUTE SP_DetalleOrdenCompra  3 , 49.9 , 29 , 11
EXECUTE SP_DetalleOrdenCompra  10 , 30 , 30 , 8
EXECUTE SP_DetalleOrdenCompra  12 , 49.9 , 32 , 11
EXECUTE SP_DetalleOrdenCompra  12 , 29.9 , 31 , 10
EXECUTE SP_DetalleOrdenCompra  15 , 12.9 , 3 , 5
EXECUTE SP_DetalleOrdenCompra  5 , 59.9 , 1 , 13
EXECUTE SP_DetalleOrdenCompra  20 , 9.9 , 2 , 6
EXECUTE SP_DetalleOrdenCompra  25 , 12.9 , 3 , 5
EXECUTE SP_DetalleOrdenCompra  13 , 29.9 , 8 , 10
EXECUTE SP_DetalleOrdenCompra  17 , 15.9 , 18 , 7
EXECUTE SP_DetalleOrdenCompra  28 , 12.9 , 5 , 5
EXECUTE SP_DetalleOrdenCompra  30 , 12.9 , 21 , 5
EXECUTE SP_DetalleOrdenCompra  15 , 12.5 , 21 , 1
EXECUTE SP_DetalleOrdenCompra  5 , 49.9 , 29 , 11
EXECUTE SP_DetalleOrdenCompra  20 , 9.9 ,16 , 6
EXECUTE SP_DetalleOrdenCompra  25 , 12.5 , 12 , 1
EXECUTE SP_DetalleOrdenCompra  13 , 30 , 29 , 8
EXECUTE SP_DetalleOrdenCompra  17 , 15.9 , 28 , 7
EXECUTE SP_DetalleOrdenCompra  28 , 12.9 , 18 , 5
EXECUTE SP_DetalleOrdenCompra  30 , 12.9 , 3 , 5
EXECUTE SP_DetalleOrdenCompra  3 , 65 , 12 , 14
EXECUTE SP_DetalleOrdenCompra  10 , 29.9 , 20 , 10
EXECUTE SP_DetalleOrdenCompra  12 , 30 , 22 , 8
EXECUTE SP_DetalleOrdenCompra  12 , 49.9 , 27 , 11
EXECUTE SP_DetalleOrdenCompra  15 , 9.9 , 5 , 6
EXECUTE SP_DetalleOrdenCompra  5 , 49.9 , 15 , 11
EXECUTE SP_DetalleOrdenCompra  20 , 12.9 , 19 , 5
EXECUTE SP_DetalleOrdenCompra  25 , 9.9 , 16 , 6
EXECUTE SP_DetalleOrdenCompra  13 , 59.9 , 23 , 13
EXECUTE SP_DetalleOrdenCompra  17 , 15.9 , 30 , 7
EXECUTE SP_DetalleOrdenCompra  5 , 29.9 , 31 , 10
EXECUTE SP_DetalleOrdenCompra  20 , 9.9 , 32 , 6
EXECUTE SP_DetalleOrdenCompra  25 , 9.9 , 32 , 6

-- Ejecutar SP_IngresarProveedor para registro de proveedores
EXECUTE SP_IngresarProveedor 'CenterCosmetic S.A.C.','RUC',20486355259,'centersac@hotmail.com',986749285,'Las Gardenias','Lima','Lima','Miraflores'

--Ejecutar Usp_BUSQUEDA_PRODPxPROVEEDOR_CON_INICIALES para buscar por una inicial de los productos de los proveedores por una orden de compra
EXEC Usp_BUSQUEDA_PRODPxPROVEEDOR_CON_INICIALES 'C%'

--Ejecutar SP_USUARIO para registro de un usuario
EXEC SP_USUARIO 'Gasu','gaso2024','Gabo Sofia Reyes Ramos','DNI','85479521','greyes@gmail.com', 965821470,'Activo',3

-- Ejecuta SP_ProductosVendidos para filtrar productos vendidos con rango de fechas
EXECUTE SP_ProductosVendidos '2024-01-01', '2024-12-31';

-- Ejecutar DELETE de un detalle de venta, el trigger impedir� la eliminaci�n
delete from Detalle_Venta  where idDetalle_Venta=4

DECLARE @IDProducto INT;
EXEC SP_PRODUCTO_REGISTRO_NUEVO 'Mithyka',126.00,10,13,2, @IdProducto = @IdProducto OUTPUT;
SELECT @IdProducto AS ResultadoCalculado;
GO

-- ======================================================
-- Consulta de datos a las tablas
-- ======================================================

--Harly Vela
--Consulta: Brinda el listado de la tabla Usuario donde nos trae los datos como: Nombre de Usuario, Contrase�a, Estado y Rol del trabajador
SELECT u.nombreUsuario,u.contrasenia,u.estado,r.nombre AS Rol
 FROM Usuario u
    INNER JOIN Rol r ON u.idRol = r.idRol
GO

--Harly Vela
-- Consulta: Brinda el listado de la tabla de Detalle de Venta donde nos trae los datos como: 
--Id de Venta, Tipo de Comprobante, N�mero de Comprobante, Cantidad, Nombre de Producto y Precio Final.
SELECT dv.idVenta, vt.tipoComprobante, vt.numComprobante, dv.cantidad ,p.nombreProducto,dv.precioFinal FROM Detalle_Venta dv  
INNER JOIN Venta vt ON vt.idVenta = dv.idVenta
INNER JOIN Producto p ON p.idProducto = dv.idProducto
GO

--Harly Vela
-- Consulta: Brinda el listado de la tabla de Venta donde nos trae los datos como: 
--Id de Venta, Cliente, Tipo de Comprobante, N�mero de Comprobante, Cantidad de Productos por la Venta y Total de la Venta.



-- Consulta: Brinda el listado por detalle de venta y id de venta junto con el nombre del producto, cantidad vendidad y precio total por la cantidad de producto
SELECT idDetalle_Venta, vt.idVenta,vt.fechaEmision AS Emision,pt.nombreProducto AS Producto, cantidad AS Cantidad, SUM(dv.precioFinal) AS Total
FROM Detalle_Venta dv
INNER JOIN Venta vt ON vt.idVenta = dv.idVenta
INNER JOIN Producto pt ON pt.idProducto = dv.idProducto
GROUP BY idDetalle_Venta, vt.idVenta, vt.fechaEmision,pt.nombreProducto, cantidad
ORDER BY 3 ASC
GO

--Consulta: TOP 10 productos más vendidos por mes
SELECT TOP 10 pt.nombreProducto AS Producto, cantidad AS Cantidad
FROM Detalle_Venta dv
INNER JOIN Venta vt ON vt.idVenta =dv.idVenta
INNER JOIN Producto pt ON pt.idProducto = dv.idProducto
WHERE
    vt.FechaEmision >= '2024-04-01' AND  vt.fechaEmision <= '2024-04-30' 
GROUP BY pt.nombreProducto, cantidad
ORDER BY 2 DESC

SELECT vt.idVenta,tipoComprobante, numComprobante, fechaEmision, dv.cantidad 
FROM Venta vt
INNER JOIN Detalle_Venta dv ON dv.idVenta=vt.idVenta
WHERE vt.idVenta=29 OR vt.idVenta=62 OR vt.idVenta=61 OR vt.idVenta=28
ORDER BY 3 DESC

SELECT vt.idVenta, pt.nombreProducto, cantidad
FROM Detalle_Venta dv
INNER JOIN Venta vt ON vt.idVenta =dv.idVenta
INNER JOIN Producto pt ON pt.idProducto = dv.idProducto
WHERE
    vt.FechaEmision >= '2024-03-01' AND  vt.fechaEmision <= '2024-03-31' 


-- Usuario que vendio mas en estado 'Activo' ordenado de mayor a menor por el total de Ventas
SELECT u.usuario,u.nombreUsuario, r.estado, SUM(v.total) As Venta_Total
FROM Usuario u 
	inner join rol r on u.idRol=r.idRol
	inner join Venta v on u.idUsuario=v.idUsuario
where r.estado in ('Activo')
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

--Mostrar los trabajadores que est�n asignados a un rol espec�fico:
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

--Obtener detalles de una orden de compra espec�fica, incluidos los productos comprados
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


--Christian Ccasa
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

--Christian Ccasa
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
--que el proveedor est� tardando para enviar los productos

SELECT oc.idProveedor, prov.nombre, prov.celular, oc.idOrden_Compra, oc.fechaEmision, datediff(DAY, oc.fechaEMision, GETDATE()) AS diasTranscurridos, oc.estado 
FROM Proveedor prov
INNER JOIN Orden_Compra oc ON oc.idProveedor =prov.idProveedor
WHERE oc.estado = 'EN PROCESO'

--Consulta el Stock m�nimo de productos
SELECT prod.nombreProducto, prod.stock
FROM Producto prod
WHERE prod.stock < 30

--Consulta el promedio de ganacia por cada producto
SELECT  prod.nombreProducto, AVG((prod.precio*1.18)-(doc.precio*1.18)) AS promedio_ganancia
FROM Producto prod
INNER JOIN Detalle_OrdenCompra doc ON prod.idProducto = doc.idProducto
GROUP BY prod.nombreProducto;

--Mostrar los trabajadores que est�n asignados a una venta
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


-- ======================================================
-- Consulta de datos a las tablas
-- ======================================================

-- CAS0 01: CONSULTA NO OPTIMIZADA
SELECT Cliente.nombre,Producto.nombreProducto,Detalle_Venta.cantidad FROM Detalle_Venta, Venta, Producto, Cliente
WHERE Venta.[idVenta]=Detalle_Venta.[idVenta]
AND  Producto.[idProducto]=Detalle_Venta.[idProducto]
AND Cliente.[idCliente]=Venta.[idCliente]
AND Producto.[idProducto] IN (SELECT [idProducto] FROM Detalle_Venta WHERE Producto.nombreProducto='Colonia' )
ORDER BY 1
GO

-- CAS0 01: CONSULTA OPTIMIZADA
SELECT cli.nombre AS Cliente, dv.idVenta, p.nombreProducto, dv.cantidad AS Cantidad
FROM Detalle_Venta dv
INNER JOIN Venta v ON v.idVenta=dv.idVenta
INNER JOIN Producto p ON p.idProducto=dv.idProducto
INNER JOIN Cliente cli ON cli.idCliente = v.idCliente
WHERE p.nombreProducto LIKE 'Colonia'
ORDER BY 1
GO


-- CAS0 02: CONSULTA NO OPTIMIZADA
SELECT DISTINCT prov.idProveedor,oc.numComprobante, prov.nombre,doc.cantidad,doc.precio,doc.precioFinal, p.nombreProducto
FROM Proveedor prov, Orden_Compra oc, Detalle_OrdenCompra doc, Producto p
WHERE SUBSTRING (p.nombreProducto,1,1) ='C'
AND prov.idProveedor=oc.idProveedor
AND doc.idProducto=p.idProducto
AND oc.idOrden_Compra=doc.idOrden_Compra
GO

-- CAS0 02: CONSULTA OPTIMIZADA
SELECT p.idProveedor,oc.numComprobante, p.nombre,doc.cantidad,doc.precio,doc.precioFinal, pro.nombreProducto FROM Proveedor p  
	inner join Orden_Compra oc ON p.idProveedor = oc.idProveedor
	inner join Detalle_OrdenCompra doc ON oc.idOrden_Compra=doc.idOrden_Compra
	inner join Producto pro ON doc.idProducto = pro.idProducto
WHERE pro.nombreProducto LIKE 'C%'
GO







