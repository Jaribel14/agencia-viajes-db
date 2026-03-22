USE Agencia_de_viajes;
GO


CREATE TABLE operacion.DetalleVenta (
    DetalleVentaId INT IDENTITY(1,1) NOT NULL,

    VentaId INT NOT NULL,
    PaqueteId INT NOT NULL,

    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(18,2) NOT NULL,

    CONSTRAINT PK_DetalleVenta PRIMARY KEY (DetalleVentaId),

    CONSTRAINT FK_DetalleVenta_Venta 
        FOREIGN KEY (VentaId)
        REFERENCES operacion.Ventas(VentaId),

    CONSTRAINT FK_DetalleVenta_Paquete 
        FOREIGN KEY (PaqueteId)
        REFERENCES producto.PaqueteTuristico(PaqueteId),

    CONSTRAINT UQ_DetalleVenta_Venta_Paquete
        UNIQUE (VentaId, PaqueteId)
);