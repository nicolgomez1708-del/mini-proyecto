CREATE SCHEMA biblioteca;
CREATE TABLE biblioteca.usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    fecha_registro DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE biblioteca.autores (
    id_autor SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(100) NOT NULL
);

CREATE TABLE biblioteca.categorias (
    id_categoria SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE biblioteca.libros (
    id_libro SERIAL PRIMARY KEY,
    id_categoria INT NOT NULL,
    id_autor INT NOT NULL,
    nombre   VARCHAR(100) NOT NULL,
    ISBN   VARCHAR(20) NOT NULL UNIQUE,

    CONSTRAINT fk_categoria 
        FOREIGN KEY (id_categoria) 
        REFERENCES biblioteca.categorias(id_categoria) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,

    CONSTRAINT fk_autor 
        FOREIGN KEY (id_autor) 
        REFERENCES biblioteca.autores(id_autor) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE biblioteca.prestamos (
    id_prestamo SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_libro INT NOT NULL,
    fecha_prestamo DATE NOT NULL DEFAULT CURRENT_DATE,
    fecha_devolucion DATE NOT NULL CHECK (fecha_devolucion >= fecha_prestamo),
    estado VARCHAR(20) NOT NULL DEFAULT 'activo',
    constraint chk_estado CHECK (estado IN ('activo', 'devuelto', 'atrasado')),

    CONSTRAINT fk_usuario  
        FOREIGN KEY (id_usuario) 
        REFERENCES biblioteca.usuarios(id_usuario) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,

    CONSTRAINT fk_libro 
        FOREIGN KEY (id_libro) 
        REFERENCES biblioteca.libros(id_libro) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE biblioteca.sanciones (
    id_sancion SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    descripcion TEXT NOT NULL,
    fecha_sancion DATE NOT NULL DEFAULT CURRENT_DATE,
    fecha_fin_sancion DATE NOT NULL,

    CONSTRAINT fk_usuario_sancion 
        FOREIGN KEY (id_usuario) 
        REFERENCES biblioteca.usuarios(id_usuario) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE INDEX idx_usuarios_correo 
ON biblioteca.usuarios(correo);

CREATE INDEX idx_categorias_nombre 
ON biblioteca.categorias(nombre);

CREATE INDEX idx_libros_isbn 
ON biblioteca.libros(ISBN);

CREATE INDEX idx_prestamos_estado
ON biblioteca.prestamos(estado);

CREATE INDEX idx_autores_nombre
ON biblioteca.autores(nombre);
