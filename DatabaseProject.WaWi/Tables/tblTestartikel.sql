CREATE TABLE [dbo].[tblTestartikel] (
    [ArtNr]          INT          NOT NULL,
    [ArtBezeichnung] VARCHAR (50) NOT NULL,
    [ArtGruppe]      CHAR (2)     NOT NULL,
    [ArtVKPreis]     SMALLMONEY   NOT NULL,
    CONSTRAINT [PK_tblTestartikel] PRIMARY KEY NONCLUSTERED ([ArtNr] ASC)
);


GO

