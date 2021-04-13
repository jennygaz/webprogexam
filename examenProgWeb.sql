DROP DATABASE IF EXISTS progWebExamenParcial2;
CREATE DATABASE IF NOT EXISTS progWebExamenParcial2 CHARACTER SET utf8mb4;
USE progWebExamenParcial2;

CREATE TABLE carreras(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
clave VARCHAR(20) NOT NULL
);

CREATE TABLE universidades(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
direccion VARCHAR(255) NOT NULL,
email VARCHAR(100) NOT NULL,
telefono VARCHAR(10) NOT NULL
);

CREATE TABLE categorias(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
descripcion TEXT NOT NULL
);

CREATE TABLE productos(
codigo_barras VARCHAR(18) primary key,
nombre VARCHAR(50) NOT NULL,
precio_compra FLOAT NOT NULL,
precio_venta FLOAT NOT NULL,
descripcion TEXT NOT NULL,
fk_categoria INT NOT NULL,
FOREIGN KEY(fk_categoria) REFERENCES categorias(id)
);

CREATE TABLE departamentos(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(30) NOT NULL,
clave VARCHAR(30) NOT NULL
);

CREATE TABLE personas(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
apellidos VARCHAR(50) NOT NULL,
genero ENUM('M', 'F') NOT NULL,
fecha_nac DATE NOT NULL,
curp VARCHAR(18) NOT NULL UNIQUE,
email VARCHAR(100) NOT NULL,
telefono VARCHAR(10)
);

CREATE TABLE empleados(
id INT PRIMARY KEY AUTO_INCREMENT,
no_empleado INT NOT NULL,
rfc VARCHAR(13) NOT NULL,
salario FLOAT NOT NULL,
fecha_ingreso DATE NOT NULL,
fk_persona INT NOT NULL,
fk_departamento INT NOT NULL,
FOREIGN KEY(fk_persona) REFERENCES personas(id),
FOREIGN KEY(fk_departamento) REFERENCES departamentos(id)
);
