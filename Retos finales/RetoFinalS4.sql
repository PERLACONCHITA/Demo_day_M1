-- Crear base de datos
create database if not exists PruebaPerla;
USE PruebaPerla;

-- Crear tabla de usuarios
CREATE TABLE IF NOT EXISTS users(
	id INT PRIMARY KEY, 
	genero VARCHAR(1),
	edad INT,
	ocup INT,
	cp VARCHAR(20)
);

-- Eliminar tablaa 
-- DROP Database pruebaperla;

-- Reto 1
-- Tabla Movies
Create table if not exists movies (
	id INT PRIMARY KEY, 
    title VARCHAR(80),
    genero VARCHAR(80)
);

-- Tabla Ratings
CREATE TABLE IF NOT EXISTS ratings (
		user_id INT,
        movie_id INT,
        rating INT,
        time_stamp BIGINT,
        foreign key (user_id) references users(id),
        foreign key (movie_id) references movies(id)
	);
-- hubiera sido bueno que ratings tuviera su propio id pero no aparecen en los datos por eso no lo agregamos

-- Ejemplo 3
select count(*) from users;

-- Reto 2
        
        



    