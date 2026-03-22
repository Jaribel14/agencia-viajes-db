USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'Agencia_de_viajes')
BEGIN
    ALTER DATABASE Agencia_de_viajes SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Agencia_de_viajes;
END
GO

CREATE DATABASE Agencia_de_viajes;
GO