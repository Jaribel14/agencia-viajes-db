-- =============================================
-- Tabla: producto.PaqueteTuristico
-- Descripción: Producto comercial compuesto por servicios
-- =============================================

USE Agencia_de_viajes;
GO


CREATE TABLE producto.PaqueteTuristico (
    PaqueteId INT IDENTITY(1,1) NOT NULL,

    Nombre NVARCHAR(200) NOT NULL,
    Descripcion NVARCHAR(200) NULL,

    PrecioBase DECIMAL(18,2) NOT NULL,

    Activo BIT NOT NULL
        CONSTRAINT DF_PaqueteTuristico_Activo DEFAULT 1,

    FechaCreacion DATETIME2 NOT NULL
        CONSTRAINT DF_PaqueteTuristico_FechaCreacion DEFAULT GETDATE(),

    CONSTRAINT PK_PaqueteTuristico 
        PRIMARY KEY (PaqueteId)
);