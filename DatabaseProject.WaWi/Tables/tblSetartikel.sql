CREATE TABLE [dbo].[tblSetartikel] (
    [SetArtNr]  INT NOT NULL,
    [TeilArtNr] INT NOT NULL,
    [SetMenge]  INT CONSTRAINT [DF_tblSetartikel_SetMenge] DEFAULT (1) NOT NULL,
    CONSTRAINT [PK_tblSetartikel] PRIMARY KEY NONCLUSTERED ([SetArtNr] ASC, [TeilArtNr] ASC),
    CONSTRAINT [FK_tblSetartikel_tblArtikel] FOREIGN KEY ([SetArtNr]) REFERENCES [dbo].[tblArtikel] ([ArtNr]),
    CONSTRAINT [FK_tblSetartikel_tblArtikel1] FOREIGN KEY ([TeilArtNr]) REFERENCES [dbo].[tblArtikel] ([ArtNr])
);


GO

