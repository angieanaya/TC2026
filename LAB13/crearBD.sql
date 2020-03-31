DROP TABLE IF EXISTS Materiales; 
DROP TABLE IF EXISTS Proveedores; 
DROP TABLE IF EXISTS Proyectos;
DROP TABLE IF EXISTS Entregan;

CREATE TABLE Materiales(
	Clave decimal(5) not null,
	Descripcion varchar(50),
	Costo decimal(8,2)
);

CREATE TABLE Proveedores(
	RFC char(13) not null,
	RazonSocial varchar(50)
);

CREATE TABLE Proyectos(
	Numero decimal(5) not null,
	Denominacion varchar(50)
);

CREATE TABLE Entregan(
	Clave decimal(5) not null,
	RFC char(13) not null,
	Numero decimal(5) not null,
	Fecha DateTime not null,
	Cantidad decimal(8,2)
);

/*LOAD DATA INFILE '../../htdocs/materiales.csv' INTO TABLE TC2026.Materiales
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

NO PUDE LLENARLA CON EL SCRIPT PORQUE ME DECÍA QUE LOS DATOS SE TRUNCABAN EN LA COLUMNA COSTO
*/


LOAD DATA INFILE '../../htdocs/proyectos.csv' INTO TABLE TC2026.Proyectos
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA INFILE '../../htdocs/proveedores.csv' INTO TABLE TC2026.Proveedores
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

/* 
LOAD DATA INFILE '../../htdocs/entregan.csv' INTO TABLE TC2026.Proyectos
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';
(Clave,RFC,Numero, @Fecha,Cantidad)
SET Fecha = STR_TO_DATE(@Fecha, '%d/%m/%Y');
NO PUDE LLENARLA CON EL SCRIPT PORQUE ME DECÍA QUE LOS DATOS SE TRUNCABAN EN LA COLUMNA CANTIDAD
/*
