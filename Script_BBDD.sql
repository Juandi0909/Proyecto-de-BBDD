-- Crear la base de datos
DROP DATABASE IF exists PatitasFelices;
CREATE DATABASE PatitasFelices;
USE PatitasFelices;

-- Tabla CLIENTES
CREATE TABLE clientes (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellidos VARCHAR(50),
    Teléfono VARCHAR(20),
    Email VARCHAR(100),
    Dirección VARCHAR(255)
);

-- Tabla MASCOTAS
CREATE TABLE mascotas (
    ID_Mascota INT AUTO_INCREMENT PRIMARY KEY,
    ID_Cliente INT,
    Nombre VARCHAR(50),
    Especie VARCHAR(30),
    Raza VARCHAR(50),
    Fecha_Nacimiento DATE,
    Observaciones TEXT,
    FOREIGN KEY (ID_Cliente) REFERENCES clientes(ID_Cliente)
);

-- Tabla EMPLEADOS
CREATE TABLE empleados (
    ID_Empleado INT AUTO_INCREMENT PRIMARY KEY,
    DNI VARCHAR(15),
    Nombre VARCHAR(50),
    Apellidos VARCHAR(50),
    Teléfono VARCHAR(20),
    Email VARCHAR(100),
    Dirección VARCHAR(255),
    Fecha_Contratación DATE,
    Puesto VARCHAR(50),
    Especialidad VARCHAR(50),
    Salario DECIMAL(10,2),
    IBAN VARCHAR(34),
    Número_SS VARCHAR(20),
    Estado VARCHAR(20)
);

-- Tabla PROVEEDORES
CREATE TABLE proveedores (
    ID_Proveedor INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Contacto VARCHAR(100),
    Teléfono VARCHAR(20),
    Email VARCHAR(100)
);

-- Tabla PRODUCTOS
CREATE TABLE productos (
    ID_Producto INT AUTO_INCREMENT PRIMARY KEY,
    ID_Proveedor INT,
    Nombre VARCHAR(100),
    Descripción TEXT,
    Marca VARCHAR(50),
    Tipo_Producto VARCHAR(50),
    Especie VARCHAR(30),
    Precio_Compra DECIMAL(10,2),
    Precio_Venta DECIMAL(10,2),
    Stock_Actual INT,
    Stock_Mínimo INT,
    Fecha_Caducidad DATE,
    Estado VARCHAR(20),
    Código_Barras VARCHAR(50),
    Ubicación_Almacén VARCHAR(100),
    FOREIGN KEY (ID_Proveedor) REFERENCES proveedores(ID_Proveedor)
);

-- Tabla SERVICIOS
CREATE TABLE servicios (
    ID_Servicio INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Servicio VARCHAR(100),
    Descripción TEXT,
    Duración_Estimada TIME,
    Precio DECIMAL(10,2),
    Tipo_Mascota VARCHAR(30)
);

-- Tabla CITAS
CREATE TABLE citas (
    ID_Cita INT AUTO_INCREMENT PRIMARY KEY,
    ID_Cliente INT,
    ID_Mascota INT,
    ID_Servicio INT,
    ID_Empleado INT,
    Fecha DATE,
    Hora TIME,
    Estado VARCHAR(20),
    Observaciones_Cita TEXT,
    FOREIGN KEY (ID_Cliente) REFERENCES clientes(ID_Cliente),
    FOREIGN KEY (ID_Mascota) REFERENCES mascotas(ID_Mascota),
    FOREIGN KEY (ID_Servicio) REFERENCES servicios(ID_Servicio),
    FOREIGN KEY (ID_Empleado) REFERENCES empleados(ID_Empleado)
);

-- Tabla VENTAS
CREATE TABLE ventas (
    ID_Venta INT AUTO_INCREMENT PRIMARY KEY,
    ID_Cliente INT,
    Fecha DATETIME,
    Total DECIMAL(10,2),
    Método_Pago VARCHAR(50),
    FOREIGN KEY (ID_Cliente) REFERENCES clientes(ID_Cliente)
);

-- Tabla DETALLE_VENTA
CREATE TABLE detalle_venta (
    ID_Detalle INT AUTO_INCREMENT PRIMARY KEY,
    ID_Venta INT,
    ID_Producto INT,
    Cantidad INT,
    Precio_Unitario DECIMAL(10,2),
    Subtotal DECIMAL(10,2),
    FOREIGN KEY (ID_Venta) REFERENCES ventas(ID_Venta),
    FOREIGN KEY (ID_Producto) REFERENCES productos(ID_Producto)
);
