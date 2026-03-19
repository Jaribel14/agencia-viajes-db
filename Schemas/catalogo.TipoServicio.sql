-- =============================================
-- Tabla: catalogo.TipoServicio
-- Descripción: Catálogo de tipos de servicio
-- =============================================

CREATE TABLE catalogo.TipoServicio (
    TipoServicioId INT IDENTITY(1,1) NOT NULL,

    Nombre NVARCHAR(200) NOT NULL,

    Activo BIT NOT NULL
        CONSTRAINT DF_TipoServicio_Activo DEFAULT 1,

    CONSTRAINT PK_TipoServicio 
        PRIMARY KEY (TipoServicioId),

    CONSTRAINT UQ_TipoServicio_Nombre 
        UNIQUE (Nombre)
);