-- =============================================
-- Tabla: catalogo.MetodoPago
-- Descripción: Catálogo de métodos de pago
-- =============================================

USE Agencia_de_viajes;
GO

CREATE TABLE catalogo.MetodoPago (
    MetodoPagoId INT IDENTITY(1,1) NOT NULL,

    Nombre NVARCHAR(100) NOT NULL,

    Activo BIT NOT NULL
        CONSTRAINT DF_MetodoPago_Activo DEFAULT 1,

    CONSTRAINT PK_MetodoPago 
        PRIMARY KEY (MetodoPagoId),

    CONSTRAINT UQ_MetodoPago_Nombre 
        UNIQUE (Nombre)
);