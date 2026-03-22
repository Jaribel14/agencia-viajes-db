USE Agencia_de_viajes;
GO

-- =========================
-- CATALOGO
-- =========================

INSERT INTO catalogo.TipoServicio (Nombre, Activo)
VALUES 
('Hotel',1),
('Vuelo',1),
('Transporte',1),
('Tour',1);

INSERT INTO catalogo.TipoProveedor (Nombre, Activo)
VALUES 
('Hotelero',1),
('Aerolínea',1),
('Transporte',1);

INSERT INTO catalogo.MetodoPago (Nombre, Activo)
VALUES 
('Efectivo',1),
('Tarjeta',1),
('Transferencia',1);

INSERT INTO catalogo.EstadoVenta (Nombre, Activo)
VALUES 
('Pendiente',1),
('Confirmada',1),
('Cancelada',1);

INSERT INTO catalogo.TipoGasto (Nombre, Activo)
VALUES 
('Operativo',1),
('Logístico',1),
('Administrativo',1);

INSERT INTO catalogo.TipoContacto (Nombre, Activo)
VALUES 
('Teléfono',1),
('Email',1),
('WhatsApp',1);

INSERT INTO catalogo.TipoBeneficio (Nombre)
VALUES 
('Comisión'),
('Bono'),
('Incentivo');

-- =========================
-- PERSONAS
-- =========================

INSERT INTO core.Persona (
    TipoDocumento,
    NumeroDocumento,
    PrimerNombre,
    PrimerApellido,
    Activo,
    FechaCreacion
)
VALUES
('DNI','1001','Juan','Perez',1,GETDATE()),   -- 1
('DNI','1002','Maria','Lopez',1,GETDATE()),  -- 2
('DNI','1003','Carlos','Gomez',1,GETDATE()); -- 3

-- =========================
-- ROLES (usan PersonaId)
-- =========================

INSERT INTO core.Cliente (PersonaId)
VALUES (1),(2);

INSERT INTO core.Vendedor (PersonaId)
VALUES (2);

INSERT INTO core.Organizador (PersonaId)
VALUES (3);

-- =========================
-- PROVEEDOR
-- =========================

INSERT INTO producto.Proveedor (Nombre, TipoProveedorId, Activo)
VALUES
('Hotel Caribe',1,1),
('Aerolínea Sky',2,1);

-- =========================
-- SERVICIO
-- =========================

INSERT INTO producto.Servicio (
    ProveedorId,
    TipoServicioId,
    Nombre,
    CostoBase,
    Activo
)
VALUES
(1,1,'Habitación doble',100,1),
(2,2,'Vuelo nacional',300,1);

-- =========================
-- PAQUETES
-- =========================

INSERT INTO producto.PaqueteTuristico (
    Nombre,
    Descripcion,
    PrecioBase,
    Activo,
    FechaCreacion
)
VALUES
('Paquete Básico','Hotel + Vuelo',500,1,GETDATE()),
('Paquete Premium','Hotel + Vuelo + Tour',800,1,GETDATE());

INSERT INTO producto.PaqueteServicio (
    PaqueteId,
    ServicioId,
    Cantidad
)
VALUES
(1,1,2),
(1,2,1),
(2,1,3),
(2,2,2);

-- =========================
-- GRUPO
-- =========================

INSERT INTO operacion.Grupo (
    PersonaId,
    TipoBeneficioId,
    Monto
)
VALUES
(3,1,100),
(3,2,150);

-- =========================
-- VENTAS
-- =========================

INSERT INTO operacion.Ventas (
    ClienteId,
    VendedorId,
    EstadoVentaId,
    FechaVenta
)
VALUES
(1,2,2,GETDATE()),
(2,2,1,GETDATE());

-- =========================
-- DETALLE VENTA
-- =========================

INSERT INTO operacion.DetalleVenta (
    VentaId,
    PaqueteId,
    Cantidad,
    PrecioUnitario
)
VALUES
(1,1,1,500),
(2,2,1,800);

-- =========================
-- PAGOS
-- =========================

INSERT INTO operacion.Pago (
    VentaId,
    FechaPago,
    Monto,
    MetodoPagoId
)
VALUES
(1,GETDATE(),500,1),
(2,GETDATE(),800,1);

-- =========================
-- GASTOS
-- =========================

INSERT INTO operacion.Gasto (
    ServicioId,
    GrupoId,
    VentaId,
    FechaGasto,
    Concepto,
    Monto,
    MetodoPagoId,
    TipoGastoId
)
VALUES
(1,1,NULL,GETDATE(),'Pago hotel',200,1,1),
(2,NULL,1,GETDATE(),'Costo vuelo',300,2,2);