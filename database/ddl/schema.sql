CREATE TABLE clientes(
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    apellido VARCHAR(60) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefono CHAR(8) NOT NULL
);

CREATE TABLE ventas(
    id_venta SERIAL PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha TIMESTAMP NOT NULL,
    total NUMERIC(10, 2)
);

CREATE TABLE detalles_ventas(
    id_detalle SERIAL PRIMARY KEY,
    id_venta INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    subtotal NUMERIC(10, 2)
);

CREATE TABLE categorias(
    id_categoria SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(250)
);

CREATE TABLE productos(
    id_producto SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    id_categoria INT NOT NULL,
    precio NUMERIC(10, 2),
    stock INT NOT NULL,
    id_proveedor INT NOT NULL
);

CREATE TABLE proveedores(
    id_proveedor SERIAL PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    telefono CHAR(8) NOT NULL,
    direccion VARCHAR(250) NOT NULL
);