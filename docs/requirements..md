# Requerimientos del Examen

## Especificaciones del Sistema

La empresa necesita un sistema que registre todos los productos disponibles en la tienda, clasificándolos por categoría y manteniendo un seguimiento de la cantidad en stock. Cada producto tiene un proveedor asignado, por lo que también es fundamental llevar un registro de los proveedores y los productos que suministran.

Cuando un cliente realiza una compra, el sistema debe registrar la venta y actualizar automáticamente el inventario, asegurando que no se vendan productos que ya están agotados. Además, la tienda quiere identificar qué productos se venden más, qué clientes compran con mayor frecuencia y cuánto se ha generado en ventas en un período determinado.

**El nuevo sistema deberá cumplir con las siguientes funcionalidades:**
1. Registro de Productos: Cada producto debe incluir su nombre, categoría, precio, stock disponible y proveedor.
2. Registro de Clientes: Se debe almacenar la información de cada cliente, incluyendo nombre, correo electrónico y número de teléfono.
3. Registro de Ventas: Cada venta debe incluir qué productos fueron vendidos, en qué cantidad y a qué cliente.
4. Registro de Proveedores: La tienda obtiene productos de diferentes proveedores, por lo que es necesario almacenar información sobre cada uno.
5. Consultas avanzadas: Se requiere la capacidad de analizar datos clave como productos más vendidos, ingresos por proveedor y clientes más frecuentes.

## Consultas
1. Listar los productos con stock menor a 5 unidades.
2. Calcular ventas totales de un mes específico.
3. Obtener el cliente con más compras realizadas.
4. Listar los productos más vendidos.
5. Consultar ventas realizadas en un rango de fechas.
6. Identificar clientes que no han comprado en los últimos 6 meses.

## Procedimiento Almacenado
1. Un procedimiento almacenado para registrar una venta.
2. Implementación de transacciones (COMMIT y ROLLBACK) para:
3. Validar que el cliente exista.
4. Verificar que el stock sea suficiente antes de procesar la venta.
5. Si no hay stock suficiente, se hace un ROLLBACK para cancelar la venta.
6. Si hay stock, se realiza un COMMIT para confirmar la transacción.