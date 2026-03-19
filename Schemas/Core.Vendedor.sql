
-- Tabla: core.Vendedor
-- Descripción: Extiende Persona como vendedor


CREATE TABLE core.Vendedor (
    PersonaId INT NOT NULL,

    CONSTRAINT PK_Vendedor 
        PRIMARY KEY (PersonaId),

    CONSTRAINT FK_Vendedor_Persona 
        FOREIGN KEY (PersonaId)
        REFERENCES core.Persona(PersonaId)
);