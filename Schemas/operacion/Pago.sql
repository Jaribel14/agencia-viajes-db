USE Agencia_de_viajes;
GO


CREATE TABLE operacion.Pago (
    PagoId INT IDENTITY(1,1) NOT NULL,

    VentaId INT NOT NULL,
    MetodoPagoId INT NOT NULL,

    FechaPago DATETIME2 NOT NULL
        CONSTRAINT DF_Pago_Fecha DEFAULT GETDATE(),

    Monto DECIMAL(18,2) NOT NULL,

    CONSTRAINT PK_Pago PRIMARY KEY (PagoId),

    CONSTRAINT FK_Pago_Venta 
        FOREIGN KEY (VentaId)
        REFERENCES operacion.Ventas(VentaId),

    CONSTRAINT FK_Pago_MetodoPago 
        FOREIGN KEY (MetodoPagoId)
        REFERENCES catalogo.MetodoPago(MetodoPagoId)
);