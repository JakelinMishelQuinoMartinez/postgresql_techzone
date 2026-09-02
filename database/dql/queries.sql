-- 1. Listar los productos con stock menor a 5 unidades.
SELECT id_producto, nombre, precio, stock, id_proveedor
FROM productos
WHERE stock < 5;

-- 2. Calcular ventas totales de un mes específico.
-- Ejemplo: mes de enero de 2026
SELECT SUM(total) AS ventas_totales
FROM ventas
WHERE EXTRACT(MONTH FROM fecha) = 1
  AND EXTRACT(YEAR FROM fecha) = 2026;

-- 3. Obtener el cliente con más compras realizadas.
SELECT c.id_cliente, c.nombre, c.apellido, c.email, COUNT(v.id_venta) AS total_compras
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nombre, c.apellido, c.email
ORDER BY total_compras DESC
LIMIT 1;

-- 4. Listar los productos más vendidos.
SELECT p.id_producto, p.nombre, SUM(dv.cantidad) AS total_vendido
FROM productos p
JOIN detalles_ventas dv ON p.id_producto = dv.id_producto
GROUP BY p.id_producto, p.nombre
ORDER BY total_vendido DESC;

-- 5. Consultar ventas realizadas en un rango de fechas.
-- Ejemplo: del 1 de enero al 31 de marzo de 2026
SELECT v.id_venta, c.nombre, c.apellido, v.fecha, v.total
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
WHERE v.fecha BETWEEN '2026-01-01' AND '2026-03-31 23:59:59'
ORDER BY v.fecha;

-- 6. Identificar clientes que no han comprado en los últimos 6 meses.
SELECT c.id_cliente, c.nombre, c.apellido, c.email, c.telefono
FROM clientes c
LEFT JOIN ventas v ON c.id_cliente = v.id_cliente
  AND v.fecha >= CURRENT_DATE - INTERVAL '6 months'
WHERE v.id_venta IS NULL;