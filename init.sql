CREATE TABLE IF NOT EXISTS genero (
    id_genero INT NOT NULL,
    titulo VARCHAR(255),
    PRIMARY KEY (id_genero)
);

INSERT IGNORE INTO genero (id_genero, titulo) VALUES 
(1, 'Accion'),
(2, 'Terror'),
(3, 'Comedia'),
(4, 'Drama'),
(5, 'Aventura'),
(6, 'Ciencia Ficcion');