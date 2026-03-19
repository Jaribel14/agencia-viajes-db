
-- Tabla: core.Cliente
-- Descripción: Extiende Persona como cliente


CREATE TABLE core.Cliente (
    PersonaId INT NOT NULL,

    CONSTRAINT PK_Cliente 
        PRIMARY KEY (PersonaId),

    CONSTRAINT FK_Cliente_Persona 
        FOREIGN KEY (PersonaId)
        REFERENCES core.Persona(PersonaId)
);