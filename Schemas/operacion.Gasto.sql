ALTER TABLE operacion.Gasto
ADD CONSTRAINT CK_Gasto_Origen_Exclusivo
CHECK (
    (GrupoId IS NOT NULL AND VentaId IS NULL)
    OR
    (GrupoId IS NULL AND VentaId IS NOT NULL)
);