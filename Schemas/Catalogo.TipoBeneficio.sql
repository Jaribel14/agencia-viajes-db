-- Tabla: catalogo.TipoBeneficio
-- Descripción: Catálogo de tipos de beneficio

CREATE TABLE catalogo.TipoBeneficio (
    TipoBeneficioId INT IDENTITY(1,1) NOT NULL,

    Nombre NVARCHAR(80) NOT NULL,

    CONSTRAINT PK_TipoBeneficio 
        PRIMARY KEY (TipoBeneficioId),

    CONSTRAINT UQ_TipoBeneficio_Nombre 
        UNIQUE (Nombre)
);