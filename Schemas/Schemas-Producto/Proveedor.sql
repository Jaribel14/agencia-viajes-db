-- Tabla: producto.Proveedor
-- Descripción: Entidad de proveedores de servicios

CREATE TABLE producto.Proveedor (
    ProveedorId INT IDENTITY(1,1) NOT NULL,

    Nombre NVARCHAR(200) NOT NULL,

    TipoProveedorId INT NOT NULL,

    Activo BIT NOT NULL
        CONSTRAINT DF_Proveedor_Activo DEFAULT 1,

    CONSTRAINT PK_Proveedor 
        PRIMARY KEY (ProveedorId),

    CONSTRAINT FK_Proveedor_TipoProveedor 
        FOREIGN KEY (TipoProveedorId)
        REFERENCES catalogo.TipoProveedor(TipoProveedorId),

    CONSTRAINT UQ_Proveedor_Nombre 
        UNIQUE (Nombre)
);