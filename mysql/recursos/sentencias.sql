SET GLOBAL log_bin_trust_function_creators = 1;
-- Creacion de la DATABASE people y la tabla registro
DROP DATABASE IF EXISTS people;
CREATE DATABASE IF NOT EXISTS people character set utf8mb4;
USE people;
CREATE TABLE IF NOT EXISTS registro (
 id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
 nombre VARCHAR (50) NOT NULL,
 apellido VARCHAR (50) NOT NULL,
 edad INT (3)
);
-- Crea el primer registro
INSERT INTO registro (nombre,apellido,edad)
  VALUES ('Jesus','Posada', 31);
SELECT * FROM registro;