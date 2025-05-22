-- Consulta 1 Listar todas las citas con información del cliente, mascota, servicio y empleado (JOIN)
SELECT c.ID_Cita, cl.Nombre AS Cliente, cl.Apellidos, m.Nombre AS Mascota, s.Nombre_Servicio, e.Nombre AS Empleado, c.Fecha, c.Hora, c.Estado
FROM citas c
JOIN clientes cl ON c.ID_Cliente = cl.ID_Cliente
JOIN mascotas m ON c.ID_Mascota = m.ID_Mascota
JOIN servicios s ON c.ID_Servicio = s.ID_Servicio
JOIN empleados e ON c.ID_Empleado = e.ID_Empleado;

-- consulta 2 Total vendido por cliente
SELECT cl.Nombre, cl.Apellidos, SUM(v.Total) AS Total_Vendido
FROM ventas v
JOIN clientes cl ON v.ID_Cliente = cl.ID_Cliente
GROUP BY cl.ID_Cliente;

-- consulta 3 Clientes con más de 3 compras
SELECT cl.Nombre, cl.Apellidos, COUNT(v.ID_Venta) AS Num_Compras
FROM clientes cl
JOIN ventas v ON cl.ID_Cliente = v.ID_Cliente
GROUP BY cl.ID_Cliente
HAVING COUNT(v.ID_Venta) > 3;

-- consulta 4 Productos con stock por debajo del mínimo
SELECT Nombre, Stock_Actual, Stock_Mínimo
FROM productos
WHERE Stock_Actual < Stock_Mínimo;

-- consulta 5 Servicios más solicitados
SELECT s.Nombre_Servicio, COUNT(c.ID_Cita) AS Cantidad_Citas
FROM servicios s
JOIN citas c ON s.ID_Servicio = c.ID_Servicio
GROUP BY s.ID_Servicio
ORDER BY Cantidad_Citas DESC;

-- consulta 6 Clientes que gastaron más que el promedio
SELECT s.Nombre_Servicio, COUNT(c.ID_Cita) AS Cantidad_Citas
FROM servicios s
JOIN citas c ON s.ID_Servicio = c.ID_Servicio
GROUP BY s.ID_Servicio
ORDER BY Cantidad_Citas DESC;

-- consulta 7 Empleados con salario superior al promedio y su puesto
SELECT cl.Nombre, cl.Apellidos, 
    (SELECT SUM(v2.Total)
     FROM ventas v2
     WHERE v2.ID_Cliente = cl.ID_Cliente) AS Total_Gastado
FROM clientes cl
WHERE (SELECT SUM(v3.Total) FROM ventas v3 WHERE v3.ID_Cliente = cl.ID_Cliente) > 
      (SELECT AVG(Total) FROM ventas);

-- consulta 8 Total vendido por producto
SELECT Nombre, Apellidos, Puesto, Salario
FROM empleados
WHERE Salario > (SELECT AVG(Salario) FROM empleados);

-- consulta 9 Clientes que tienen más mascotas que el promedio de clientes
SELECT p.Nombre, SUM(dv.Cantidad) AS Total_Vendido, SUM(dv.Subtotal) AS Ingresos
FROM detalle_venta dv
JOIN productos p ON dv.ID_Producto = p.ID_Producto
GROUP BY p.ID_Producto;

-- consulta 10  Productos que han sido vendidos más que el promedio
SELECT cl.Nombre, cl.Apellidos,
    (SELECT COUNT(m2.ID_Mascota) FROM mascotas m2 WHERE m2.ID_Cliente = cl.ID_Cliente) AS Num_Mascotas
FROM clientes cl
WHERE (SELECT COUNT(m3.ID_Mascota) FROM mascotas m3 WHERE m3.ID_Cliente = cl.ID_Cliente) > 
      (SELECT AVG(num_mascotas) FROM (
          SELECT COUNT(m4.ID_Mascota) AS num_mascotas
          FROM mascotas m4
          GROUP BY m4.ID_Cliente
      ) AS subquery);

