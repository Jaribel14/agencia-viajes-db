-- =============================================
-- Tabla: catalogo.TipoContacto
-- Descripción: Catálogo de tipos de contacto
-- =============================================

CREATE TABLE catalogo.TipoContacto (
    TipoContactoId INT IDENTITY(1,1) NOT NULL,

    Nombre NVARCHAR(100) NOT NULL,

    Activo BIT NOT NULL
        CONSTRAINT DF_TipoContacto_Activo DEFAULT 1,

    CONSTRAINT PK_TipoContacto 
        PRIMARY KEY (TipoContactoId),

    CONSTRAINT UQ_TipoContacto_Nombre 
        UNIQUE (Nombre)
);