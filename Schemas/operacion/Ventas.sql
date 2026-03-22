USE Agencia_de_viajes;
GO


CREATE TABLE operacion.Ventas (
    VentaId INT IDENTITY(1,1) NOT NULL,

    ClienteId INT NOT NULL,
    VendedorId INT NOT NULL,
    EstadoVentaId INT NOT NULL,

    FechaVenta DATETIME2 NOT NULL
        CONSTRAINT DF_Ventas_Fecha DEFAULT GETDATE(),

    CONSTRAINT PK_Ventas PRIMARY KEY (VentaId),

    CONSTRAINT FK_Ventas_Cliente 
        FOREIGN KEY (ClienteId)
        REFERENCES core.Cliente(PersonaId),

    CONSTRAINT FK_Ventas_Vendedor 
        FOREIGN KEY (VendedorId)
        REFERENCES core.Vendedor(PersonaId),

    CONSTRAINT FK_Ventas_EstadoVenta 
        FOREIGN KEY (EstadoVentaId)
        REFERENCES catalogo.EstadoVenta(EstadoVentaId)
);