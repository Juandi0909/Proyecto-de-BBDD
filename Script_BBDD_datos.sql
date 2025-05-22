
-- Tabla de clientes
INSERT INTO clientes (Nombre, Apellidos, Teléfono, Email, Dirección) VALUES
('Carlos', 'Pérez', '555123456', 'carlos.perez@email.com', 'Calle Falsa 123'),
('María', 'López', '555987654', 'maria.lopez@email.com', 'Av. Siempre Viva 742'),
('Juan', 'Martínez', '555246810', 'juan.martinez@email.com', 'Calle Luna 55'),
('Ana', 'García', '555112233', 'ana.garcia@email.com', 'Paseo del Sol 18'),
('Luis', 'Torres', '555332211', 'luis.torres@email.com', 'Calle Río 40'),
('Laura', 'Ruiz', '555778899', 'laura.ruiz@email.com', 'Camino del Bosque 5'),
('David', 'Sánchez', '555443322', 'david.sanchez@email.com', 'Plaza Mayor 10'),
('Elena', 'Fernández', '555556677', 'elena.fernandez@email.com', 'Calle Nube 77'),
('Miguel', 'Ramírez', '555667788', 'miguel.ramirez@email.com', 'Av. Mar 21'),
('Sofía', 'Morales', '555889900', 'sofia.morales@email.com', 'Calle Sol 9');

-- tabla de empleados
INSERT INTO empleados (DNI, Nombre, Apellidos, Teléfono, Email, Dirección, Fecha_Contratación, Puesto, Especialidad, Salario, IBAN, Número_SS, Estado) VALUES
('12345678A', 'Pedro', 'Suárez', '555111222', 'pedro.suarez@email.com', 'Calle Veterinaria 1', '2021-02-01', 'Veterinario', 'Caninos', 1800.00, 'ES7620770024003102575766', '123456789012', 'Activo'),
('23456789B', 'Lucía', 'Méndez', '555222333', 'lucia.mendez@email.com', 'Calle Salud 2', '2020-06-15', 'Recepcionista', '-', 1200.00, 'ES9121000418450200051332', '987654321098', 'Activo'),
('34567890C', 'Álvaro', 'Gómez', '555333444', 'alvaro.gomez@email.com', 'Calle Clínica 3', '2022-01-10', 'Veterinario', 'Felinos', 1850.00, 'ES3000491500051234567892', '112233445566', 'Activo'),
('45678901D', 'Carmen', 'Jiménez', '555444555', 'carmen.jimenez@email.com', 'Calle Centro 4', '2019-03-25', 'Peluquero', 'Perros', 1300.00, 'ES6000491500051234567893', '667788990011', 'Activo'),
('56789012E', 'Raúl', 'Hernández', '555555666', 'raul.hernandez@email.com', 'Av. Animales 5', '2018-12-05', 'Veterinario', 'Exóticos', 1900.00, 'ES3000491500051234567894', '334455667788', 'Activo'),
('67890123F', 'Sara', 'Navarro', '555666777', 'sara.navarro@email.com', 'Calle Pet 6', '2023-05-14', 'Recepcionista', '-', 1250.00, 'ES3000491500051234567895', '998877665544', 'Activo'),
('78901234G', 'Hugo', 'Vargas', '555777888', 'hugo.vargas@email.com', 'Calle Animalia 7', '2021-11-30', 'Veterinario', 'Caninos', 1750.00, 'ES3000491500051234567896', '556677889900', 'Activo'),
('89012345H', 'Paula', 'Ramos', '555888999', 'paula.ramos@email.com', 'Av. Fauna 8', '2020-04-20', 'Peluquero', 'Felinos', 1350.00, 'ES3000491500051234567897', '445566778899', 'Activo'),
('90123456I', 'Daniel', 'Moreno', '555999000', 'daniel.moreno@email.com', 'Calle Zoología 9', '2019-08-17', 'Recepcionista', '-', 1280.00, 'ES3000491500051234567898', '223344556677', 'Activo'),
('01234567J', 'Irene', 'Castro', '555000111', 'irene.castro@email.com', 'Plaza Animal 10', '2022-10-11', 'Veterinario', 'Reptiles', 1950.00, 'ES3000491500051234567899', '778899001122', 'Activo');

-- Tabla de Mascotas
INSERT INTO mascotas (ID_Cliente, Nombre, Especie, Raza, Fecha_Nacimiento, Observaciones) VALUES
(1, 'Max', 'Perro', 'Labrador', '2020-05-15', 'Ninguna'),
(2, 'Luna', 'Gato', 'Siames', '2019-07-10', 'Le gusta trepar'),
(3, 'Rocky', 'Perro', 'Bulldog', '2021-01-22', 'Problemas respiratorios'),
(4, 'Mia', 'Gato', 'Persa', '2020-11-05', 'Asustadiza'),
(5, 'Toby', 'Perro', 'Pug', '2018-04-17', 'Duerme mucho'),
(6, 'Nala', 'Gato', 'Maine Coon', '2019-08-30', 'Muy activa'),
(7, 'Bruno', 'Perro', 'Beagle', '2020-03-12', 'Le gusta ladrar'),
(8, 'Cleo', 'Gato', 'Bengala', '2021-06-25', 'Se esconde a menudo'),
(9, 'Simba', 'Perro', 'Golden Retriever', '2017-09-10', 'Obediente'),
(10, 'Lola', 'Gato', 'Sphynx', '2022-01-01', 'Piel sensible');

-- tabla de proveedores
INSERT INTO proveedores (Nombre, Contacto, Teléfono, Email) VALUES
('PetCare S.A.', 'Ana Ruiz', '666111222', 'ana.ruiz@petcare.com'),
('Mascotas Feliz', 'Luis Pérez', '666222333', 'luis.perez@mascotasfeliz.com'),
('VetSupplies', 'Marta Díaz', '666333444', 'marta.diaz@vetsupplies.com'),
('ComidaAnimal S.L.', 'Carlos Gómez', '666444555', 'carlos.gomez@comidaanimal.com'),
('AccesoriosPet', 'Laura Sánchez', '666555666', 'laura.sanchez@accesoriospet.com'),
('PetProductos', 'Pablo Torres', '666666777', 'pablo.torres@petproductos.com'),
('BioAnimal', 'Silvia Romero', '666777888', 'silvia.romero@bioanimal.com'),
('VetAlimentos', 'Andrés Navarro', '666888999', 'andres.navarro@vetalimentos.com'),
('PetFarm', 'Eva Martínez', '666999000', 'eva.martinez@petfarm.com'),
('Zoológicos Pro', 'Jorge León', '666000111', 'jorge.leon@zoologicospro.com');

-- tabla de productos
INSERT INTO productos (ID_Proveedor, Nombre, Descripción, Marca, Tipo_Producto, Especie, Precio_Compra, Precio_Venta, Stock_Actual, Stock_Mínimo, Fecha_Caducidad, Estado, Código_Barras, Ubicación_Almacén) VALUES
(1, 'Alimento Premium', 'Croquetas sabor carne', 'DogPlus', 'Alimento', 'Perro', 5.00, 10.00, 50, 10, '2026-05-20', 'Disponible', '100000000001', 'Estante A1'),
(2, 'Juguete Ratón', 'Juguete para gatos con catnip', 'CatFun', 'Accesorio', 'Gato', 1.50, 3.50, 100, 20, '2027-12-31', 'Disponible', '100000000002', 'Estante B2'),
(3, 'Shampoo Canino', 'Shampoo dermatológico', 'VetClean', 'Higiene', 'Perro', 2.50, 5.00, 30, 5, '2026-03-15', 'Disponible', '100000000003', 'Estante C3'),
(4, 'Vitaminas Gato', 'Suplemento alimenticio', 'CatHealth', 'Medicamento', 'Gato', 3.00, 6.50, 25, 5, '2026-08-10', 'Disponible', '100000000004', 'Estante D4'),
(5, 'Collar Reflectante', 'Collar con luz LED', 'SafePet', 'Accesorio', 'Perro', 4.00, 8.00, 40, 10, '2027-01-01', 'Disponible', '100000000005', 'Estante E5'),
(6, 'Arena Sanitaria', 'Arena aglutinante 10kg', 'CatClean', 'Higiene', 'Gato', 7.00, 14.00, 60, 15, '2027-06-01', 'Disponible', '100000000006', 'Estante F6'),
(7, 'Antipulgas', 'Pipetas de aplicación tópica', 'VetProtect', 'Medicamento', 'Perro', 6.00, 12.00, 35, 7, '2025-12-01', 'Disponible', '100000000007', 'Estante G7'),
(8, 'Comida Húmeda', 'Lata gourmet para gatos', 'CatTasty', 'Alimento', 'Gato', 1.20, 2.50, 80, 20, '2026-09-25', 'Disponible', '100000000008', 'Estante H8'),
(9, 'Transportadora Pequeña', 'Para gatos y perros pequeños', 'PetMove', 'Accesorio', 'Ambos', 10.00, 20.00, 15, 5, '2028-01-01', 'Disponible', '100000000009', 'Estante I9'),
(10, 'Cepillo Dental', 'Cepillo para higiene dental', 'CleanTeeth', 'Higiene', 'Ambos', 2.00, 4.00, 22, 5, '2027-11-01', 'Disponible', '100000000010', 'Estante J10');

-- tabla de servicios
INSERT INTO servicios (Nombre_Servicio, Descripción, Duración_Estimada, Precio, Tipo_Mascota) VALUES
('Consulta General', 'Revisión general de salud', '00:30:00', 25.00, 'Perro'),
('Vacunación', 'Aplicación de vacunas básicas', '00:20:00', 15.00, 'Gato'),
('Desparasitación', 'Tratamiento antiparasitario', '00:15:00', 18.00, 'Perro'),
('Peluquería', 'Baño y corte de pelo', '01:00:00', 30.00, 'Perro'),
('Corte de Uñas', 'Corte y limado de uñas', '00:10:00', 10.00, 'Gato'),
('Consulta Especialista', 'Consulta con especialista en piel', '00:45:00', 40.00, 'Perro'),
('Cirugía menor', 'Cirugías ambulatorias pequeñas', '02:00:00', 150.00, 'Gato'),
('Radiografía', 'Estudio por imagen de diagnóstico', '00:25:00', 60.00, 'Perro'),
('Limpieza Dental', 'Limpieza bucal con anestesia', '01:30:00', 75.00, 'Perro'),
('Vacuna Antirrábica', 'Vacuna anual contra rabia', '00:15:00', 12.00, 'Gato');

-- tabla de ventas 
INSERT INTO ventas (ID_Cliente, Fecha, Total, Método_Pago) VALUES
(1, '2025-05-01 10:30:00', 120.50, 'Tarjeta'),
(2, '2025-05-02 11:45:00', 85.00, 'Efectivo'),
(3, '2025-05-03 09:15:00', 200.00, 'Transferencia'),
(4, '2025-05-04 14:00:00', 99.99, 'Tarjeta'),
(5, '2025-05-05 15:30:00', 45.00, 'Efectivo'),
(6, '2025-05-06 16:40:00', 150.00, 'Tarjeta'),
(7, '2025-05-07 13:20:00', 75.75, 'Transferencia'),
(8, '2025-05-08 12:10:00', 60.00, 'Efectivo'),
(9, '2025-05-09 11:00:00', 180.90, 'Tarjeta'),
(10, '2025-05-10 10:10:00', 55.55, 'Efectivo');

-- tabla de citas
INSERT INTO citas (ID_Cliente, ID_Mascota, ID_Servicio, ID_Empleado, Fecha, Hora, Estado, Observaciones_Cita) VALUES
(1, 1, 1, 1, '2025-05-10', '10:00:00', 'Completada', 'Revisión general sin novedades'),
(2, 2, 2, 2, '2025-05-11', '11:00:00', 'Cancelada', 'Cliente no asistió'),
(3, 3, 3, 3, '2025-05-12', '12:00:00', 'Pendiente', 'Primera visita'),
(4, 4, 4, 4, '2025-05-13', '13:00:00', 'Completada', 'Corte exitoso'),
(5, 5, 5, 5, '2025-05-14', '09:00:00', 'Pendiente', 'Uñas muy largas'),
(6, 6, 6, 6, '2025-05-15', '14:00:00', 'Completada', 'Diagnóstico dermatitis'),
(7, 7, 7, 7, '2025-05-16', '15:00:00', 'Pendiente', 'Requiere análisis previo'),
(8, 8, 8, 8, '2025-05-17', '16:00:00', 'Completada', 'Fractura leve'),
(9, 9, 9, 9, '2025-05-18', '17:00:00', 'Completada', 'Sarro eliminado'),
(10, 10, 10, 10, '2025-05-19', '18:00:00', 'Pendiente', 'Vacuna anual');

-- tabla de detalle_ventas
INSERT INTO detalle_venta (ID_Venta, ID_Producto, Cantidad, Precio_Unitario, Subtotal) VALUES
(1, 1, 2, 20.00, 40.00),
(2, 2, 1, 45.00, 45.00),
(3, 3, 4, 25.00, 100.00),
(4, 4, 2, 49.99, 99.98),
(5, 5, 1, 45.00, 45.00),
(6, 6, 3, 50.00, 150.00),
(7, 7, 1, 75.75, 75.75),
(8, 8, 2, 30.00, 60.00),
(9, 9, 2, 90.45, 180.90),
(10, 10, 1, 55.55, 55.55);










