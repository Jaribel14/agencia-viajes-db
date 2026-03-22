USE Agencia_de_viajes;
GO

CREATE TABLE operacion.Grupo (
    GrupoId INT IDENTITY(1,1) NOT NULL,
    PersonalId INT NOT NULL,
    TipoBeneficioId INT NOT NULL,
    Monto DECIMAL(10,2) NOT NULL,

    CONSTRAINT PK_Grupo PRIMARY KEY (GrupoId),

    CONSTRAINT FK_Grupo_Organizador 
        FOREIGN KEY (PersonalId)
        REFERENCES core.Organizador(PersonaId),

    CONSTRAINT FK_Grupo_TipoBeneficio
        FOREIGN KEY (TipoBeneficioId)
        REFERENCES catalogo.TipoBeneficio(TipoBeneficioId)
);
GO