CREATE TABLE [dbo].[TBL_ArtikelGruppen] (
    [ArtGr]     CHAR (2)     NOT NULL,
    [ArtGrText] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_ArtikelGruppen] PRIMARY KEY NONCLUSTERED ([ArtGr] ASC)
);


GO

