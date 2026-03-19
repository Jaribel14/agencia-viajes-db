-- Tabla: core.Contacto
-- Descripción: Información de contacto por persona

CREATE TABLE core.Contacto (
    ContactoId INT IDENTITY(1,1) NOT NULL,

    PersonaId INT NOT NULL,
    TipoContactoId INT NOT NULL,

    Valor VARCHAR(100) NOT NULL,

    CONSTRAINT PK_Contacto 
        PRIMARY KEY (ContactoId),

    CONSTRAINT FK_Contacto_Persona 
        FOREIGN KEY (PersonaId)
        REFERENCES core.Persona(PersonaId),

    CONSTRAINT FK_Contacto_TipoContacto 
        FOREIGN KEY (TipoContactoId)
        REFERENCES catalogo.TipoContacto(TipoContactoId),

    CONSTRAINT UQ_Contacto_Persona_Tipo_Valor 
        UNIQUE (PersonaId, TipoContactoId, Valor)
);