-- =============================================
-- Tabla: catalogo.EstadoVenta
-- Descripción: Catálogo de estados de una venta
-- =============================================
USE Agencia_de_viajes;
GO

CREATE TABLE catalogo.EstadoVenta (
    EstadoVentaId INT IDENTITY(1,1) NOT NULL,

    Nombre NVARCHAR(60) NOT NULL,

    Activo BIT NOT NULL
        CONSTRAINT DF_EstadoVenta_Activo DEFAULT 1,

    CONSTRAINT PK_EstadoVenta 
        PRIMARY KEY (EstadoVentaId),

    CONSTRAINT UQ_EstadoVenta_Nombre 
        UNIQUE (Nombre)
);