USE Agencia_de_viajes;
GO

CREATE TABLE operacion.Gasto (
    GastoId INT IDENTITY(1,1) NOT NULL,
    ServicioId INT NOT NULL,
    GrupoId INT NULL,
    VentaId INT NULL,
    FechaGasto DATETIME2 NOT NULL,
    Concepto NVARCHAR(400) NOT NULL,
    Monto DECIMAL(18,2) NOT NULL,
    MetodoPagoId INT NOT NULL,
    TipoGastoId INT NOT NULL,

    CONSTRAINT PK_Gasto PRIMARY KEY (GastoId),

    -- Regla: o Grupo o Venta, pero no ambos
    CONSTRAINT CK_Gasto_Origen_Exclusivo CHECK (
        (GrupoId IS NOT NULL AND VentaId IS NULL)
        OR
        (GrupoId IS NULL AND VentaId IS NOT NULL)
    ),

    CONSTRAINT FK_Gasto_Grupo FOREIGN KEY (GrupoId)
        REFERENCES operacion.Grupo(GrupoId),

    CONSTRAINT FK_Gasto_Venta FOREIGN KEY (VentaId)
        REFERENCES operacion.Ventas(VentaId),

    CONSTRAINT FK_Gasto_Servicio FOREIGN KEY (ServicioId)
        REFERENCES producto.Servicio(ServicioId),

    CONSTRAINT FK_Gasto_MetodoPago FOREIGN KEY (MetodoPagoId)
        REFERENCES catalogo.MetodoPago(MetodoPagoId),

    CONSTRAINT FK_Gasto_TipoGasto FOREIGN KEY (TipoGastoId)
        REFERENCES catalogo.TipoGasto(TipoGastoId)
);
GO