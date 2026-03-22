-- Tabla: producto.Servicio
-- Descripción: Servicios ofrecidos por proveedores

USE Agencia_de_viajes;
GO


CREATE TABLE producto.Servicio (
    ServicioId INT IDENTITY(1,1) NOT NULL,

    ProveedorId INT NOT NULL,
    TipoServicioId INT NOT NULL,

    Nombre NVARCHAR(200) NOT NULL,

    CostoBase DECIMAL(18,2) NOT NULL,

    Activo BIT NOT NULL
        CONSTRAINT DF_Servicio_Activo DEFAULT 1,

    CONSTRAINT PK_Servicio 
        PRIMARY KEY (ServicioId),

    CONSTRAINT FK_Servicio_Proveedor 
        FOREIGN KEY (ProveedorId)
        REFERENCES producto.Proveedor(ProveedorId),

    CONSTRAINT FK_Servicio_TipoServicio 
        FOREIGN KEY (TipoServicioId)
        REFERENCES catalogo.TipoServicio(TipoServicioId)
);