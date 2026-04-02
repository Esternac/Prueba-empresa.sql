IF DB_ID('EmpresaDB') IS NOT NULL
DROP DATABASE EmpresaDB;
GO

CREATE DATABASE EmpresaDB;
GO

USE EmpresaDB;
GO

CREATE TABLE Empleados (
    id_empleado INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100),
    edad INT,
    estado_civil VARCHAR(50),
    puesto VARCHAR(100),
    correo VARCHAR(100),
    telefono VARCHAR(20),
    salario DECIMAL(10,2),
    fecha_ingreso DATE,
    direccion VARCHAR(150)
);

INSERT INTO Empleados 
(nombre, edad, estado_civil, puesto, correo, telefono, salario, fecha_ingreso, direccion)
VALUES
('Luis Ramirez', 28, 'Soltero', 'Desarrollador Web', 'luis@gmail.com', '987654321', 2500.00, '2022-03-15', 'Lima'),
('Maria Torres', 32, 'Casada', 'Analista de Datos', 'maria@gmail.com', '912345678', 3200.00, '2021-07-10', 'Arequipa'),
('Carlos Vega', 40, 'Casado', 'Gerente', 'carlos@gmail.com', '999888777', 5000.00, '2019-01-20', 'Lima'),
('Ana Lopez', 26, 'Soltera', 'Diseñadora UX', 'ana@gmail.com', '955444333', 2800.00, '2023-05-01', 'Cusco');

SELECT * FROM Empleados;

SELECT nombre, puesto, salario
FROM Empleados
WHERE salario > 3000;

SELECT nombre, fecha_ingreso
FROM Empleados
ORDER BY fecha_ingreso;

SELECT AVG(salario) AS Promedio_Salario
FROM Empleados;
