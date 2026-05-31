
SELECT
    l.id_libro,
    l.nombre AS libro,
    a.nombre AS autor,
    c.nombre AS categoria,
    l.isbn
FROM biblioteca.libros l
INNER JOIN biblioteca.autores a
    ON l.id_autor = a.id_autor
INNER JOIN biblioteca.categorias c
    ON l.id_categoria = c.id_categoria
ORDER BY l.id_libro;

SELECT
    p.id_prestamo,
    u.nombre AS usuario,
    l.nombre AS libro,
    p.fecha_prestamo,
    p.fecha_devolucion,
    p.estado
FROM biblioteca.prestamos p
INNER JOIN biblioteca.usuarios u
    ON p.id_usuario = u.id_usuario
INNER JOIN biblioteca.libros l
    ON p.id_libro = l.id_libro
WHERE p.estado = 'activo';

SELECT
    u.nombre AS usuario,
    l.nombre AS libro,
    p.fecha_prestamo,
    p.fecha_devolucion,
    p.estado
FROM biblioteca.prestamos p
INNER JOIN biblioteca.usuarios u
    ON p.id_usuario = u.id_usuario
INNER JOIN biblioteca.libros l
    ON p.id_libro = l.id_libro
WHERE u.nombre = 'Dante Requena';

SELECT
    l.id_libro,
    l.nombre AS libro
FROM biblioteca.libros l
WHERE l.id_libro NOT IN (
    SELECT id_libro
    FROM biblioteca.prestamos
    WHERE estado = 'activo'
);

SELECT
    u.id_usuario,
    u.nombre,
    COUNT(p.id_prestamo) AS total_prestamos
FROM biblioteca.usuarios u
LEFT JOIN biblioteca.prestamos p
    ON u.id_usuario = p.id_usuario
GROUP BY u.id_usuario, u.nombre
ORDER BY total_prestamos DESC;

SELECT
    p.id_prestamo,
    u.nombre AS usuario,
    l.nombre AS libro,
    p.fecha_devolucion,
    p.estado
FROM biblioteca.prestamos p
INNER JOIN biblioteca.usuarios u
    ON p.id_usuario = u.id_usuario
INNER JOIN biblioteca.libros l
    ON p.id_libro = l.id_libro
WHERE p.fecha_devolucion < '2025-05-20'
AND p.estado <> 'devuelto';

SELECT
    l.nombre AS libro,
    u.nombre AS usuario,
    p.fecha_prestamo,
    p.fecha_devolucion AS fecha_esperada_devolucion,
    p.estado
FROM biblioteca.prestamos p
INNER JOIN biblioteca.libros l
    ON p.id_libro = l.id_libro
INNER JOIN biblioteca.usuarios u
    ON p.id_usuario = u.id_usuario
ORDER BY p.fecha_devolucion;

SELECT
    u.id_usuario,
    u.nombre,
    COUNT(p.id_prestamo) AS cantidad_prestamos
FROM biblioteca.usuarios u
LEFT JOIN biblioteca.prestamos p
    ON u.id_usuario = p.id_usuario
GROUP BY u.id_usuario, u.nombre
ORDER BY cantidad_prestamos DESC, u.nombre ASC;

SELECT
    s.id_sancion,
    u.nombre AS usuario,
    s.descripcion,
    s.fecha_sancion,
    s.fecha_fin_sancion
FROM biblioteca.sanciones s
INNER JOIN biblioteca.usuarios u
    ON s.id_usuario = u.id_usuario
ORDER BY s.fecha_sancion;
