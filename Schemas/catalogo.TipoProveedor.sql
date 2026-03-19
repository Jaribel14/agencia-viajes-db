-- =============================================
-- Tabla: catalogo.TipoProveedor
-- Descripción: Catálogo de tipos de proveedor
-- =============================================

CREATE TABLE catalogo.TipoProveedor (
    TipoProveedorId INT IDENTITY(1,1) NOT NULL,

    Nombre NVARCHAR(200) NOT NULL,

    Activo BIT NOT NULL
        CONSTRAINT DF_TipoProveedor_Activo DEFAULT 1,

    CONSTRAINT PK_TipoProveedor 
        PRIMARY KEY (TipoProveedorId),

    CONSTRAINT UQ_TipoProveedor_Nombre 
        UNIQUE (Nombre)
);