CREATE TABLE [dbo].[tblArtikelGruppen] (
    [ArtGr]     CHAR (2)     NOT NULL,
    [ArtGrText] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tblArtikelGruppen] PRIMARY KEY NONCLUSTERED ([ArtGr] ASC)
);


GO

