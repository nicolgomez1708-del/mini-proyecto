INSERT INTO biblioteca.usuarios (nombre, correo) VALUES
('Iker Beltrán', 'iker.beltran@email.com'),
('Maia Serrano', 'maia.serrano@email.com'),
('Thiago Valverde', 'thiago.valverde@email.com'),
('Alma Quintana', 'alma.quintana@email.com'),
('Dante Requena', 'dante.requena@email.com'),
('Noa Carrillo', 'noa.carrillo@email.com'),
('Leandro Fajardo', 'leandro.fajardo@email.com');


INSERT INTO biblioteca.autores (nombre, nacionalidad) VALUES
('Miguel de Cervantes', 'Española'),
('Pablo Neruda', 'Chilena'),
('Octavio Paz', 'Mexicana'),
('José Saramago', 'Portuguesa'),
('Federico García Lorca', 'Española'),
('Rómulo Gallegos', 'Venezolana'),
('Juan Rulfo', 'Mexicana');

INSERT INTO biblioteca.categorias (nombre) VALUES
('Terror'),
('Misterio'),
('Romance'),
('Filosofía'),
('Tecnología'),
('Educación'),
('Aventura');

INSERT INTO biblioteca.libros (id_categoria, id_autor, nombre, ISBN) VALUES
(1, 1, 'Don Quijote de la Mancha', '9780000000008'),
(2, 2, 'Veinte Poemas de Amor', '9780000000009'),
(3, 3, 'El Laberinto de la Soledad', '9780000000010'),
(4, 4, 'Ensayo sobre la Ceguera', '9780000000011'),
(5, 5, 'Bodas de Sangre', '9780000000012'),
(6, 6, 'Doña Bárbara', '9780000000013'),
(7, 7, 'Pedro Páramo', '9780000000014');

INSERT INTO biblioteca.prestamos
(id_usuario, id_libro, fecha_prestamo, fecha_devolucion, estado)
VALUES
(1, 1, '2025-04-01', '2025-04-15', 'devuelto'),
(2, 2, '2025-04-08', '2025-04-22', 'atrasado'),
(3, 3, '2025-04-15', '2025-04-29', 'activo'),
(4, 4, '2025-05-01', '2025-05-15', 'devuelto'),
(5, 5, '2025-05-05', '2025-05-19', 'activo'),
(6, 6, '2025-05-10', '2025-05-24', 'atrasado'),
(7, 7, '2025-05-15', '2025-05-29', 'activo');

INSERT INTO biblioteca.sanciones
(id_usuario, descripcion, fecha_sancion, fecha_fin_sancion)
VALUES
(1, 'Retraso en devolución de libro', '2025-04-18', '2025-05-02'),
(2, 'Daño en la portada del libro', '2025-04-25', '2025-05-09'),
(3, 'Retraso reiterado en devoluciones', '2025-05-01', '2025-05-15'),
(4, 'Pérdida de separadores incluidos', '2025-05-05', '2025-05-19'),
(5, 'Retraso en devolución de libro', '2025-05-10', '2025-05-24'),
(6, 'Uso indebido del material bibliográfico', '2025-05-15', '2025-05-29'),
(7, 'Retraso en devolución de libro', '2025-05-20', '2025-06-03');
