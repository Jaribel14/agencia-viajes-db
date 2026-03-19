-- =============================================
-- Tabla: catalogo.TipoGasto
-- Descripción: Catálogo de tipos de gasto
-- =============================================

CREATE TABLE catalogo.TipoGasto (
    TipoGastoId INT IDENTITY(1,1) NOT NULL,

    Nombre NVARCHAR(100) NOT NULL,

    Activo BIT NOT NULL
        CONSTRAINT DF_TipoGasto_Activo DEFAULT 1,

    CONSTRAINT PK_TipoGasto 
        PRIMARY KEY (TipoGastoId),

    CONSTRAINT UQ_TipoGasto_Nombre 
        UNIQUE (Nombre)
);