INSERT INTO clientes (nombre, apellido, email, telefono) VALUES
('Emma', 'Gonzáles', 'egonzales@gmail.com', 14785236),
('Carlos', 'Pérez', 'cperez@gmail.com', 65478932),
('Ana', 'Martínez', 'amartinez@gmail.com', 58741296),
('Pablo', 'López', 'plopez@gmail.com', 32158947),
('Cristian', 'Cuevas', 'ccuevas@gmail.com', 48216795),
('Sergio', 'De la Cruz', 'delacruzs@gmail.com', 95123648);

INSERT INTO ventas (id_cliente, fecha, total) VALUES
(1, '2026-01-12 16:30:00', 750.00),
(2, '2026-02-04 12:30:00', 5000.00),
(3, '2026-03-25 09:30:00', 200.00),
(4, '2026-04-10 14:30:00', 250.00),
(5, '2026-05-16 10:30:00', 360.00);

INSERT INTO detalles_ventas (id_venta, id_producto, cantidad, subtotal) VALUES
(1, 1, 25, 250.00),
(1, 2, 10, 500.00),
(2, 3, 1, 5000.00),
(3, 4, 2, 200.00),
(4, 2, 3, 250.00),
(5, 5, 3, 360.00);

INSERT INTO categorias (nombre, descripcion) VALUES
('Cables', 'Para diferentes puertos y de diferentes largos'),
('Computadoras', 'De escritorio y laptops'),
('MicroSD', 'De diferentes capacidades de almacenamiento'),
('Accesorios', 'Para computadores');

INSERT INTO productos (nombre, id_categoria, precio, stock, id_proveedor) VALUES
('Cable USB-C', 1, 10.00, 50, 1),
('MicroSD 32gb', 3, 50.00, 60, 2),
('Laptop HP-360', 2, 5000.00, 3, 3),
('Mouse Stanley 50', 4, 100.00, 6, 4),
('Audífonos Samsung-08', 4, 120.00, 100, 5);

INSERT INTO proveedores (nombre, telefono, direccion) VALUES
('CampusTech', 25487638, 'Calzada la Paz, zona 16, 5-41 Ciudad de Guatemala'),
('EpicTech', 45987258, 'Avenida Santa Cecilia, zona 8, 6-14 Ciudad de Guatemala'),
('TodoTech', 35715964, 'Avendida Bolívar, zona 8, 4-7 Ciudad de Guatemala'),
('TechCenter', 78541237, 'Avenida La Pedrera, zona 6, 7-8 Ciudad de Guatemala'),
('MegaTech', 44779512, 'Avenida La Asunción, zona 4, 5-9 Xela');
