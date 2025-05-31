USE TUCUMAX;

-- Tabla: PERSONA
INSERT INTO PERSONA (Dni,Edad,Nacionalidad, Nombre, Apellido)
VALUES
(12345678,34,'Argentina', 'Juan', 'Pérez'),
(87654321, 28,'Chile', 'María', 'González'),
(45678912, 42,'Uruguay', 'Carlos', 'López'),
(78912345, 20,'Brasil', 'Ana', 'Silva'),
(23456789, 55,'Perú', 'Luis', 'Ramírez'),
(34567890, 31,'Colombia', 'Sofía', 'Martínez'),
(56789012, 25,'México', 'Miguel', 'Hernández');


-- Tabla: EMPLEADO
INSERT INTO EMPLEADO (PERSONA_Dni, PERSONA_Nacionalidad, PuntuacionDesempeño, Descripción, Empresa, Puesto)
VALUES
(23456789,'Perú',45,'','Kilometro1000','Guia'),
(34567890,'Colombia',87,'' ,'Lecfer','Chofer'),
(56789012,'México',90,'','MaxDream','Supervisor');



-- Tabla: CLIENTE
INSERT INTO CLIENTE (PERSONA_Dni,PERSONA_Nacionalidad , FeedbackForm)
VALUES
(12345678, 'Argentina', 'Muy satisfecho'),
(87654321, 'Chile', 'Satisfecho'),
(45678912, 'Uruguay', 'Bueno'),
(78912345, 'Brasil', 'Excelente');

-- Tabla: CONTINGENCIAS
INSERT INTO CONTINGENCIAS (IdContingencias, CLIENTE_PERSONA_Dni, CLIENTE_PERSONA_Nacionalidad, Hora, Fecha, DescripcionProblema, DescripcionSolucion, SeResolvio)
VALUES
(1, 12345678, 'Argentina','08:00:00', '2024-05-01', 'Problema con el transporte', 'Cambio de transporte','NO'),
(2, 87654321, 'Chile','09:00:00', '2024-05-02', 'Cancelación del vuelo', 'Cambio de vuelos','SI'),
(3, 45678912, 'Uruguay','10:00:00', '2024-05-03', 'Problema con la habitación', 'Cambio de habitación','NO'),
(4, 45678912, 'Uruguay','10:00:00', '2024-07-20', 'Problema con la habitación', 'Cambio de habitación','SI'),
(5, 45678912, 'Uruguay','10:00:00', '2024-10-05', 'Problema con la habitación', 'Cambio de habitación','SI');


-- Tabla: PAQUETE
INSERT INTO PAQUETE (IdPaquete, FechaDeCreación)
VALUES
(1, '2023-01-15'),
(2, '2023-02-20'),
(3, '2023-03-10'),
(4, '2023-04-05'),
(5, '2023-05-12'),
(6, '2023-06-08'),
(7, '2023-07-01'),
(8, '2023-08-15'),
(9, '2023-09-10'),
(10, '2023-10-01'),
(11, '2023-11-05'),
(12, '2023-12-25'),
(13, '2024-01-10'),
(14, '2024-02-14'),
(15, '2024-03-22'),
(16, '2024-04-18'),
(17, '2024-05-03'),
(18, '2024-06-07'),
(19, '2024-07-15'),
(20, '2024-08-02'),
(21, '2024-09-11'),
(22, '2024-10-05'),
(23, '2024-11-01'),
(24, '2024-12-15'),
(25, '2025-01-20'),
(26, '2025-02-10'),
(27, '2025-03-05'),
(28, '2025-04-25'),
(29, '2025-05-10'),
(30, '2025-06-18'),
(31, '2025-07-25'),
(32, '2025-08-15'),
(33, '2025-09-03'),
(34, '2025-10-11'),
(35, '2020-01-15');


-- Tabla: COMPRA
INSERT INTO COMPRA (PAQUETE_IdPaquete, CLIENTE_PERSONA_Dni, CLIENTE_PERSONA_Nacionalidad, FechaDePago, FormaDePago, Monto)
VALUES
(1, 12345678, 'Argentina', '2024-01-10', 'Tarjeta de Crédito', 1200.00),
(2, 87654321, 'Chile', '2024-02-15', 'Transferencia Bancaria', 1500.00),
(3, 45678912, 'Uruguay', '2024-03-20', 'Efectivo', 1800.00),
(4, 78912345, 'Brasil', '2024-04-05', 'Tarjeta de Débito', 1400.00);


-- Tabla: DIRECCIÓN
INSERT INTO DIRECCIÓN (Mapa, Calle, Numero, Localidad)
VALUES
(101, 'Avenida Siempreviva', 742, 'Yerba Buena'),
(102, 'Calle Falsa', 123, 'Yerba Buena'),
(103, 'Boulevard Industrial', 456, 'SMT'),
(104, 'Ruta Nacional', 78, 'Yerba Buena'),
(105, 'Camino de los Andes', 55, 'SMT'),
(106, 'Sisoco', 420, 'SMT'),
(107, 'Quito 2599', 69, 'YB'),
(108, 'Avenida Belgrano', 1150, 'SMT'),
(109, 'Calle Rivadavia', 250, 'Tafí Viejo'),
(110, 'Ruta 9', 100, 'Yerba Buena'),
(111, 'Calle Las Heras', 600, 'Concepción'),
(112, 'Avenida Sarmiento', 98, 'Lules'),
(113, 'Camino a El Cadillal', 5, 'San Javier'),
(114, 'Avenida Almafuerte', 1200, 'Trancas'),
(115, 'Calle San Martín', 48, 'Bella Vista'),
(116, 'Ruta 301', 200, 'Monteros'),
(117, 'Calle Belgrano', 75, 'Famaillá'),
(118, 'Avenida 9 de Julio', 2400, 'Las Talitas'),
(119, 'Calle Larga', 456, 'Río Seco'),
(120, 'Avenida Colón', 800, 'Graneros');

-- Tabla: SEGURO_MEDICO
INSERT INTO SEGURO_MEDICO (IdSeguroMedico, PAQUETE_IdPaquete, Precio, Empresa, TipoDeCobertura, CantidadPacientes)
VALUES
(1, 1, 55000, 'MedLife', 'Total', 12),
(2, 2, 75000, 'VitalCare', 'Parcial', 8),
(3, 3, 32000, 'SaludFutura', 'Total', 20),
(4, 4, 145000, 'HealthPlus', 'Total', 5),
(5, 5, 69000, 'RedSalud', 'Parcial', 10),
(6, 6, 50000, 'Medicare Solutions', 'Total', 18),
(7, 7, 120000, 'CareMax', 'Parcial', 22),
(8, 8, 83000, 'Seguro Verde', 'Total', 14),
(9, 9, 67000, 'ProtecSalud', 'Parcial', 16),
(10, 10, 55000, 'SaludOptima', 'Total', 11),
(11, 11, 46000, 'Bienestar Global', 'Parcial', 13),
(12, 12, 98000, 'GlobalMed', 'Total', 17),
(13, 13, 72000, 'Farmavida', 'Parcial', 9),
(14, 14, 115000, 'SanoCare', 'Total', 6),
(15, 15, 80000, 'RedMed', 'Parcial', 21);

-- Tabla: TRANSPORTE
INSERT INTO TRANSPORTE (Id_Transporte, Tipo, Precio, Empresa_proovedora, Cantidad_minima_de_pasajeros,Cantidad_maxima_de_pasajeros ,Trayecto, Origen, Destino)
VALUES
(1, 'Bus', 150, 'Transporte Tucumán', 25, 50, 'San Miguel de Tucumán - Tafí del Valle', 'San Miguel de Tucumán', 'Tafí del Valle'),
(2, 'Tren', 200, 'Trenes Argentinos', 50, 100, 'San Miguel de Tucumán - Villa María', 'San Miguel de Tucumán', 'Villa María'),
(3, 'Avión', 500, 'Aeropuerto Tucumán', 50, 150, 'San Miguel de Tucumán - Buenos Aires', 'San Miguel de Tucumán', 'Buenos Aires'),
(4, 'Ferry', 300, 'Navegación del Litoral', 20, 200, 'San Miguel de Tucumán -  Río Salí', 'San Miguel de Tucumán', 'Río Salí'),
(5, 'Auto', 80, 'Tucumán Rent', 1, 4, 'San Miguel de Tucumán - Amaicha del Valle', 'San Miguel de Tucumán', 'Amaicha del Valle'),
(6, 'Moto', 50, 'Scooter Tucumán', 2, 2, 'San Miguel de Tucumán - Yerba Buena', 'San Miguel de Tucumán', 'Yerba Buena'),
(7, 'Bicicleta', 20, 'EcoBikes Tucumán', 1, 1, 'Parque 9 de Julio - San Miguel de Tucumán', 'Parque 9 de Julio', 'San Miguel de Tucumán'),
(8, 'Bus', 150, 'Transporte Tucumán', 25, 50, 'Concepción - San Miguel de Tucumán', 'Concepción', 'San Miguel de Tucumán'),
(9, 'Tren', 180, 'Ferrocarriles de Tucumán', 30, 70, 'La Banda del Río Salí - San Miguel de Tucumán', 'La Banda del Río Salí', 'San Miguel de Tucumán'),
(10, 'Bus', 170, 'Transporte Tucumán', 25, 50, 'San Javier - San Miguel de Tucumán', 'San Javier', 'San Miguel de Tucumán'),
(11, 'Bus', 200, 'Transporte Tucumán', 25, 50, 'Tafí del Valle - San Miguel de Tucumán', 'San Miguel de Tucumán', 'Tafí del Valle');


-- Tabla: INCLUYE1
INSERT INTO INCLUYE (TRANSPORTE_ID_Transporte, PAQUETE_IdPaquete, PrecioPorPasajero, Fecha, CantidadDePasajerosEnElPaquete)
VALUES
(1, 1, 50.00, '2024-01-15', 20),  -- San Miguel de Tucumán - Tafí del Valle
(2, 2, 75.00, '2024-02-20', 15),  -- San Miguel de Tucumán - Villa María
(3, 3, 60.00, '2024-03-25', 25),  -- San Miguel de Tucumán - Buenos Aires
(4, 4, 40.00, '2024-04-10', 10),  -- San Miguel de Tucumán - Río Salí
(5, 5, 70.00, '2024-05-05', 18),  -- San Miguel de Tucumán - Amaicha del Valle
(6, 6, 55.00, '2024-06-12', 12),  -- San Miguel de Tucumán - Yerba Buena
(7, 7, 80.00, '2024-07-01', 22),  -- Parque 9 de Julio - San Miguel de Tucumán
(8, 8, 50.00, '2024-08-15', 20),  -- Concepción - San Miguel de Tucumán
(9, 9, 60.00, '2024-09-05', 15),  -- La Banda del Río Salí - San Miguel de Tucumán
(10, 10, 55.00, '2024-10-20', 18), -- San Javier - San Miguel de Tucumán
(11, 11, 70.00, '2024-11-10', 12); -- San Miguel de Tucumán - Tafí del Valle



-- Tabla: EVENTO
INSERT INTO EVENTO (FechaInicio, HoraInicio, IdEvento, Dirección_Mapa, Nombre, Descripción, HoraFinalización, FechaFinalización, Tipo, URL)
VALUES

('2024-01-10', 18, 1001, 108, 'Concierto de Rock','Concierto entretenido', '21:00', '2024-01-12', 'Concierto', 'http://evento1.com'),
('2024-02-15', 20, 1002, 109, 'Obra de Teatro', 'Obra del mago de oz', '22:00', '2024-02-16', 'Entretenida', 'http://evento2.com'),
('2024-03-20', 19, 1003, 110, 'Festival de Cine', 'En el marco del cine argentino','21:00','2024-03-22','Workshops', 'http://evento3.com'),
('2024-04-05', 10, 1004, 111, 'Exposición de Arte', 'Varios artistas tucumanos', '15:00','2024-04-10','Todo el dia', 'http://evento4.com'),
('2024-05-25', 09, 1005, 112, 'Maratón Deportiva', 'Para corredores experimentaros','12:00', '2024-05-25','Maraton', 'http://evento5.com'),
('2024-06-30', 15, 1006, 113, 'Feria Gastronómica', 'Comida Tucumana', '23:00', '2024-06-30', 'Gastronomia' ,'http://evento6.com'),
('2024-07-15', 08, 1007, 114, 'Competencia de Ajedrez', 'Varios jugadores','10:00', '2024-07-15','Ajedrez', 'http://evento7.com');


-- Tabla: SPONSOR
INSERT INTO SPONSOR (Nombre)
VALUES
('DIGICOM'),
('SISTELCO'),
('SCANIA'),
('GOBIERNO DE TUCUMAN'),
('CIBERPLAST'),
('VICENTE TRAPANI'),
('EDET');



-- Tabla: CONTIENE
INSERT INTO CONTIENE (EVENTO_IdEvento,EVENTO_DIRECCIÓN_Mapa,PAQUETE_IdPaquete, PrecioPorEntradas, CantidadDeEntradas)
VALUES
(1001,108, 1, 500.00, 50),
(1002,109, 2, 750.00, 30),
(1003,110, 3, 600.00, 40),
(1004,111, 4, 450.00, 20),
(1005,112, 5, 800.00, 60),
(1006,113, 6, 550.00, 25),
(1007,114, 7, 900.00, 35),
(1001,108, 8, 500.00, 50),
(1002,109, 12, 750.00, 30),
(1003,110, 20, 600.00, 40),
(1004,111, 35, 450.00, 20);


-- Tabla: PATROCINA
INSERT INTO PATROCINA (EVENTO_DIRECCIÓN_Mapa, EVENTO_IdEvento, SPONSOR_Nombre)
VALUES
(108, 1001, 'DIGICOM'),
(109, 1002, 'SISTELCO'),
(110, 1003, 'SCANIA'),
(111, 1004, 'GOBIERNO DE TUCUMAN'),
(112, 1005, 'CIBERPLAST'),
(113, 1006, 'VICENTE TRAPANI'),
(114, 1007, 'EDET');

-- Tabla: HOTEL_HOSTEL
INSERT INTO HOTEL_HOSTEL (IdHotel, DIRECCIÓN_Mapa, CantidadEstrellas, Pileta, WiFi, Restaurantes, Nombre)
VALUES
(1, 116, 5, 'Si', 'Si', 'si', 'HILTON'),
(2, 117, 4, 'si', 'si', 'si', 'SHERATON'),
(3, 118, 1, 'si', 'si', 'si', 'GARDEN PARK'),
(4, 119, 4, 'No', 'si', 'si', 'AMERIAN'),
(5, 120, 5, 'si', 'si', 'si', 'GARDEN PLAZA'),
(6, 102, 2, 'no', 'si', 'si', 'CARLOS V'),
(7, 101, 4, 'no', 'si', 'si', 'HOTEL FRANCIA');

-- Tabla: HABITACIÓN/CAMA
INSERT INTO HABITACIÓN_CAMA (IdHabitación, CantidadDeCamas, CantidadDeBaños, Capacidad)
VALUES
(1, 1, 1, 2),
(2, 2, 2, 4),
(3, 0, 3, 6),
(4, 1, 1, 2), 
(5, 0, 2, 4),
(6, 1, 1, 1),
(7, 1, 2, 3);


-- Tabla: SEHOSPEDA
INSERT INTO SEHOSPEDA (PAQUETE_IdPaquete, HABITACIÓN_IdHabitación, Precio, CantidadDeHabitaciones, Fecha)
VALUES
(1, 1, 500.00, 3, '2024-01-15'),
(2, 2, 750.00, 2, '2024-02-20'),
(3, 3, 600.00, 4, '2024-03-25'),
(4, 4, 450.00, 1, '2024-04-10'),
(5, 5, 800.00, 5, '2024-05-05'),
(6, 6, 550.00, 3, '2024-06-12'),
(7, 7, 900.00, 2, '2024-07-01');





-- Tabla: RESTAURANTE
INSERT INTO RESTAURANTE (IdRestaurante, DIRECCIÓN_Mapa, Horario, Rampadiscapacitados, MenuesEspeciales, Nombre)
VALUES
(1, 101, 15, 'Si', 'Si',  'El Parador'),
(2, 102, 14, 'Si', 'Si',  'Leno'),
(3, 103, 10, 'Si', 'Si',  'Postino'),
(4, 104, 14, 'No', 'Si',  'Natural'),
(5, 105, 09, 'Si', 'No',  'La Fusta'),
(6, 106, 20, 'No', 'Si',  'Pipa'),
(7, 107, 21, 'No', 'No',  'Comidas Del Corazón');

-- Tabla: PLATO
INSERT INTO PLATO (IdPlato, Nombre, Tipo, RESTAURANTE_IdRestaurante, RESTAURANTE_DIRECCIÓN_Mapa, Descripcion)
VALUES
(1, 'Pizza Margarita', 'Italiana', 1, 101, 'Clásica pizza italiana'),
(2, 'Hamburguesa BBQ', 'Americana', 2, 102, 'Hamburguesa con salsa BBQ'),
(3, 'Sushi Roll', 'Japonesa', 3, 103, 'Roll de sushi con salmón '),
(4, 'Ensalada César', 'Saludable', 4, 104, 'Ensalada con lechuga '),
(5, 'Tacos al Pastor', 'Mexicana', 5, 105, 'Tacos con carne al pastor'),
(6, 'Pasta Alfredo', 'Italiana', 6, 106, 'Pasta cremosa'),
(7, 'Humita', 'Tucumana', 7, 107, 'Pollo marinado'),
(8, 'Empanadas', 'Tucumana', 7, 107, 'Pasta cremosa'),
(9, 'Empanadas', 'Tucumana', 1, 101, 'Pasta cremosa');

-- Tabla: RESERVA
INSERT INTO RESERVA (PAQUETE_IdPaquete, RESTAURANTE_IdRestaurante, RESTAURANTE_DIRECCIÓN_Mapa, Precio, CantidadDeSillas, Fecha)
VALUES
(1, 1, 101, 1000, 1, '2024-01-15'),
(2, 2, 102, 3000, 2, '2024-02-20'),
(3, 3, 103, 5000, 4, '2024-03-25'),
(4, 4, 104, 3000, 5, '2024-04-10'),
(5, 5, 105, 2000, 6, '2024-05-05'),
(6, 6, 106, 8000, 4, '2024-06-12'),
(7, 7, 107, 5000, 4, '2024-07-01');


-- Tabla: LUGAR_TURÍSTICO
INSERT INTO LUGAR_TURÍSTICO (IdLugarTuristico, Nombre, Descripción, CircuitoTurísctico, DIRECCIÓN_Mapa)
VALUES
(1, 'Quinta Agronómica', 'Lugar de estudio', 'Circuito academico', 101),
(2, 'Cerro San Javier', 'Lugar de belleza natural', 'Circuito natural', 102),
(3, 'Tafí del Valle', 'La mejor zona de la provincia para el turismo', 'Circuito Conoce Tucumán', 103),
(4, 'Parque 9 de Julio', 'Esta lindo', 'Circuito Conoce Tucumán', 104),
(5, 'Casa Histórica', 'Punto de interes para la Historia Argentina', 'Circuito Conoce Tucumán', 105),
(6, 'Casa Gerónimo Vargas Herrera', 'Ahi vivo yo', 'Circuito diario', 106),
(7, 'Teatro Mercedes Sosa', 'Lugar donde usualmente tocan bandas de música', 'Circuito Tucumán cultural',107);


-- Tabla: ACTIVIDAD
INSERT INTO ACTIVIDAD (Id_Actividad, Nombre, Descripción, RequerimientosMedicos, EdadMinima)
VALUES
(1, 'Raki', 'Raki es un lugar de juegos en familia', 'No problemas cardiacos, No obesidad', 8),
(2, 'Congreso anual de Física', 'Congreso organizado por la facultad', null, 0),
(3, 'Visita Histórica', 'Visita guiada a la Casa Histórica', null, 0),
(4, 'Irme a dormir', 'Irme a dormir a mi casa', 'En principio, ninguno', 0),
(5, 'Cata anual de vinos', 'La cata anual de vinos de Tafí del Valle', 'No alergicos al alcohol', 18),
(6, 'Cabalgata', 'Recorrido a caballo por Tafí del Valle ', 'Debe poder andar a caballo', 14),
(7, 'Tiro con arco y flecha', 'Actividad en el parque con un instructor', 'No vegetarianos', 16);

-- Tabla: SE_REALIZAN_EN
INSERT INTO SE_REALIZAN_EN (ACTIVIDAD_Id_Actividad, LUGAR_TURÍSTICO_IdLugarTuristico,LUGAR_TURÍSTICO_DIRECCIÓN_Mapa,Precio)
VALUES
(1, 1, 101,10000),
(2, 2, 102,0),
(3, 3, 103,4300),
(4, 4, 104,0),
(5, 5, 105,20000),
(6, 6, 106,15000),
(7, 7, 107,6700);


-- Tabla: REALIZA
INSERT INTO REALIZA (ACTIVIDAD_Id_Actividad, PAQUETE_IdPaquete, Precio, CantidadEntradas, Fecha)
VALUES
(1, 1, 500, 4, '2023-01-18'),
(2, 2, 0, 6, '2023-02-25'),
(2, 3, 0, 4, '2023-03-17'),
(6, 4, 1000, 5, '2023-04-08'),
(4, 5, 0, 2, '2023-05-18'),
(3, 6, 250, 3, '2023-06-10'),
(7, 7, 600, 6, '2023-07-07'),
(1, 35, 500, 4, '2023-01-18'),
(2, 35, 0, 6, '2023-02-25'),
(3, 35, 0, 4, '2023-03-17');



-- Tabla: MULTIMEDIA
INSERT INTO MULTIMEDIA (IdMultimedia,Nombre, Tipo, Contenido)
VALUES
(1,'Vistas del Restaurant.jpg', 'Foto', null),
(2,'Recorrido del hotel.mp4', 'Video', null),
(3,'Evento1a.jpg', 'Foto', null),
(4,'Evento1b.jpg', 'Foto', null),
(5,'Evento2a.jpg', 'Foto', null),
(6,'Vistas del cerro.mp4', 'Foto', null),
(7,'Audio promocional Hotel.mp3', 'Audio', null);



-- Tabla: GALERIA_LUGAR_TURÍSTICO
INSERT INTO GALERIA_LUGARTURÍSTICO (MULTIMEDIA_IdMultimedia, LUGAR_TURÍSTICO_IdLugarTuristico,LUGAR_TURÍSTICO_DIRECCIÓN_Mapa)
VALUES
(6, 2,102);

-- Tabla: GALERIA_HOTEL_HOSTEL
INSERT INTO GALERIA_HOTEL_HOSTEL (MULTIMEDIA_IdMultimedia, HOTEL_HOSTEL_IdHotel,HOTEL_HOSTEL_DIRECCIÓN_Mapa)
VALUES
(2, 1,116),
(7, 4,119);

-- Tabla: GALERIA_RESTAURANT
INSERT INTO GALERIA_RESTAURANTE (MULTIMEDIA_IdMultimedia, RESTAURANTE_IdRestaurante,RESTAURANTE_DIRECCIÓN_Mapa)
VALUES
(1, 3,103);

-- Tabla: GALERIA_EVENTO
INSERT INTO GALERIA_EVENTO (MULTIMEDIA_IdMultimedia, EVENTO_IdEvento,EVENTO_DIRECCIÓN_Mapa)
VALUES
(3, 1001,108),
(4, 1002,109),
(5, 1003,110);


-- CONSULTAS DE LA CATEDRA

-- consulta1 
SELECT DISTINCT P.IdPaquete, E.Nombre
FROM PAQUETE P
INNER JOIN CONTIENE C ON P.IdPaquete = C.PAQUETE_IdPaquete
INNER JOIN EVENTO E ON C.EVENTO_IdEvento = E.IdEvento
WHERE P.IdPaquete= 35
UNION
SELECT P.IdPaquete, L.Nombre FROM PAQUETE P
INNER JOIN REALIZA R ON P.IdPaquete = R.PAQUETE_IdPaquete
INNER JOIN ACTIVIDAD A ON R.ACTIVIDAD_Id_Actividad = A.Id_Actividad
INNER JOIN SE_REALIZAN_EN S ON A.Id_Actividad = S.ACTIVIDAD_Id_Actividad
INNER JOIN LUGAR_TURÍSTICO L ON S.LUGAR_TURÍSTICO_IdLugarTuristico = L.IdLugarTuristico
WHERE P.IdPaquete= 35;
-- STP CONSULTA1
DELIMITER $$

CREATE PROCEDURE CONSULTA1 (IN paqueteId INT)
BEGIN
    -- Realiza la consulta con UNION para obtener eventos y lugares turísticos asociados al paquete
    SELECT DISTINCT P.IdPaquete, E.Nombre AS NombreEvento
    FROM PAQUETE P
    INNER JOIN CONTIENE C ON P.IdPaquete = C.PAQUETE_IdPaquete
    INNER JOIN EVENTO E ON C.EVENTO_IdEvento = E.IdEvento
    WHERE P.IdPaquete = paqueteId
    UNION
    SELECT P.IdPaquete, L.Nombre AS NombreLugar
    FROM PAQUETE P
    INNER JOIN REALIZA R ON P.IdPaquete = R.PAQUETE_IdPaquete
    INNER JOIN ACTIVIDAD A ON R.ACTIVIDAD_Id_Actividad = A.Id_Actividad
    INNER JOIN SE_REALIZAN_EN S ON A.Id_Actividad = S.ACTIVIDAD_Id_Actividad
    INNER JOIN LUGAR_TURÍSTICO L ON S.LUGAR_TURÍSTICO_IdLugarTuristico = L.IdLugarTuristico
    WHERE P.IdPaquete = paqueteId;
END $$

DELIMITER ;

CALL CONSULTA1(35);        -- llamada

-- consulta2
SELECT * FROM HOTEL_HOSTEL H 
WHERE H.Pileta = 'Si' AND H.WiFi = 'Si';
-- STP consulta2
DELIMITER $$

CREATE PROCEDURE CONSULTA2 ()
BEGIN
    -- Consulta hoteles u hostales con pileta y WiFi
    SELECT * 
    FROM HOTEL_HOSTEL H
    WHERE H.Pileta = 'Si' AND H.WiFi = 'Si';
END $$

DELIMITER ;
CALL CONSULTA2();  -- llamada consulta2
-- consulta3
SELECT P.IdPaquete
FROM Paquete P INNER JOIN SEGURO_MEDICO SM ON P.IdPaquete = SM.PAQUETE_IdPaquete
WHERE SM.TipoDeCobertura = "Total";
DELIMITER $$

CREATE PROCEDURE CONSULTA3 ()
BEGIN
    -- Consulta los paquetes con seguros médicos de cobertura total
    SELECT P.IdPaquete
    FROM PAQUETE P
    INNER JOIN SEGURO_MEDICO SM ON P.IdPaquete = SM.PAQUETE_IdPaquete
    WHERE SM.TipoDeCobertura = 'Total';
END $$

DELIMITER ;
CALL CONSULTA3(); -- llamada consulta 3 


-- consulta4
SELECT * FROM CONTINGENCIAS C 
WHERE (C.Fecha BETWEEN '24-07-06' AND '24-10-20') AND (C.SeResolvio='SI');


DELIMITER $$

CREATE PROCEDURE CONSULTA4 (
    IN fechaInicio DATE, 
    IN fechaFin DATE
)
BEGIN
    -- Consulta las contingencias resueltas en el rango de fechas
    SELECT * 
    FROM CONTINGENCIAS C
    WHERE C.Fecha BETWEEN fechaInicio AND fechaFin
          AND C.SeResolvio = 'SI';
END $$

DELIMITER ;


CALL CONSULTA4('2024-07-06', '2024-10-20'); -- LLamada consulta 4 

-- consulta5
SELECT T.Empresa_proovedora FROM Transporte T
WHERE Origen = 'San Miguel de Tucumán' AND  Destino='Tafí del Valle';


DELIMITER $$

CREATE PROCEDURE CONSULTA5 (
    IN origen VARCHAR(255), 
    IN destino VARCHAR(255)
)
BEGIN
    -- Consulta las empresas proveedoras de transporte según origen y destino
    SELECT T.Empresa_proovedora
    FROM TRANSPORTE T
    WHERE T.Origen = origen AND T.Destino = destino;
END $$

DELIMITER ;

CALL CONSULTA5('San Miguel de Tucumán', 'Tafí del Valle');




-- NUESTRAS CONSULTAS

-- consulta6    Que eventos son sponsoreados por que empresas
SELECT E.Nombre, P.SPONSOR_Nombre
FROM EVENTO E INNER JOIN PATROCINA P ON E.IdEvento = P.EVENTO_IdEvento;

-- consulta7    Precio total de cada item del paquete y total absoluto
SELECT P.IdPaquete, (SM.Precio * SM.CantidadPacientes) AS 'PTotal Seguro',
(I.PrecioPorPasajero * I.CantidadDePasajerosEnElPaquete) AS 'PTotal Transportes',
(R.Precio * R.CantidadDeSillas) AS 'PTotal Reservas',
(SE.Precio * SE.CantidadDeHabitaciones) AS 'PTotal Hospedajes',
(C.PrecioPorEntradas * C.CantidadDeEntradas) AS 'PTotal Eventos',
(REA.Precio * REA.CantidadEntradas) AS 'PTotal Actividades',
((SM.Precio * SM.CantidadPacientes) + (I.PrecioPorPasajero * I.CantidadDePasajerosEnElPaquete) + (R.Precio * R.CantidadDeSillas)
+ (SE.Precio * SE.CantidadDeHabitaciones) + (C.PrecioPorEntradas * C.CantidadDeEntradas) + (REA.Precio * REA.CantidadEntradas)) AS 'PTotal'
FROM PAQUETE P 
INNER JOIN SEGURO_MEDICO SM ON P.IdPaquete = SM.PAQUETE_IdPaquete
INNER JOIN INCLUYE I ON P.IdPaquete = I.PAQUETE_IdPaquete
INNER JOIN RESERVA R ON P.IdPaquete = R.PAQUETE_IdPaquete
INNER JOIN SEHOSPEDA SE ON P.IdPaquete = SE.PAQUETE_IdPaquete
INNER JOIN CONTIENE C ON P.IdPaquete = C.PAQUETE_IdPaquete
INNER JOIN REALIZA REA ON P.IdPaquete = REA.PAQUETE_IdPaquete;

-- consulta8    Restaurantes en donde se pueden comer empanadas tucuamanas
SELECT R.Nombre 
FROM RESTAURANTE R INNER JOIN PLATO P ON R.IdRestaurante = P.RESTAURANTE_IdRestaurante
WHERE P.Nombre = 'Empanadas';

