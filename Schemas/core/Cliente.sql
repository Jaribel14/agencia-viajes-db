
-- Tabla: core.Cliente
-- Descripción: Extiende Persona como cliente
USE Agencia_de_viajes;
GO

CREATE TABLE core.Cliente (
    PersonaId INT NOT NULL,

    CONSTRAINT PK_Cliente 
        PRIMARY KEY (PersonaId),

    CONSTRAINT FK_Cliente_Persona 
        FOREIGN KEY (PersonaId)
        REFERENCES core.Persona(PersonaId)
);