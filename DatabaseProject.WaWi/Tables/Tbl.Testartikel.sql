CREATE TABLE [dbo].[TBL_Testartikel] (
    [ArtNr]          INT          NOT NULL,
    [ArtBezeichnung] VARCHAR (50) NOT NULL,
    [ArtGruppe]      CHAR (2)     NOT NULL,
    [ArtVKPreis]     SMALLMONEY   NOT NULL,
    CONSTRAINT [PK_Testartikel] PRIMARY KEY NONCLUSTERED ([ArtNr] ASC)
);


GO

