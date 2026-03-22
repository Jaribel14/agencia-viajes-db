USE Agencia_de_viajes;
GO

-- Crear schemas si no existen
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'core')
    EXEC('CREATE SCHEMA core');
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'catalogo')
    EXEC('CREATE SCHEMA catalogo');
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'producto')
    EXEC('CREATE SCHEMA producto');
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'operacion')
    EXEC('CREATE SCHEMA operacion');
GO