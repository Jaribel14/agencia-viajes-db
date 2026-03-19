-- =============================================
-- Tabla: core.Organizador
-- Descripción: Extiende Persona como organizador
-- =============================================

CREATE TABLE core.Organizador (
    PersonaId INT NOT NULL,

    CONSTRAINT PK_Organizador 
        PRIMARY KEY (PersonaId),

    CONSTRAINT FK_Organizador_Persona 
        FOREIGN KEY (PersonaId)
        REFERENCES core.Persona(PersonaId)
);