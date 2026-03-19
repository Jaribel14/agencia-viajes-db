
-- Tabla: core.Persona
-- Descripción: Entidad base para personas del sistema


CREATE TABLE core.Persona (
    PersonaId INT IDENTITY(1,1) NOT NULL,

    TipoDocumento NVARCHAR(40) NOT NULL,
    NumeroDocumento NVARCHAR(40) NOT NULL,

    PrimerNombre NVARCHAR(40) NOT NULL,
    SegundoNombre NVARCHAR(40) NULL,

    PrimerApellido NVARCHAR(40) NOT NULL,
    SegundoApellido NVARCHAR(40) NULL,

    Activo BIT NOT NULL
        CONSTRAINT DF_Persona_Activo DEFAULT 1,

    FechaCreacion DATETIME2 NOT NULL
        CONSTRAINT DF_Persona_FechaCreacion DEFAULT GETDATE(),

    CONSTRAINT PK_Persona 
        PRIMARY KEY (PersonaId),

    CONSTRAINT UQ_Persona_Documento 
        UNIQUE (TipoDocumento, NumeroDocumento)
);