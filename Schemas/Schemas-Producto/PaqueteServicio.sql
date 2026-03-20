-- Tabla: producto.PaqueteServicio
-- Descripción: Relación entre paquetes y servicios (N:M)

CREATE TABLE producto.PaqueteServicio (
    PaqueteId INT NOT NULL,
    ServicioId INT NOT NULL,

    Cantidad INT NOT NULL,

    CONSTRAINT PK_PaqueteServicio 
        PRIMARY KEY (PaqueteId, ServicioId),

    CONSTRAINT FK_PaqueteServicio_Paquete 
        FOREIGN KEY (PaqueteId)
        REFERENCES producto.PaqueteTuristico(PaqueteId),

    CONSTRAINT FK_PaqueteServicio_Servicio 
        FOREIGN KEY (ServicioId)
        REFERENCES producto.Servicio(ServicioId)
);