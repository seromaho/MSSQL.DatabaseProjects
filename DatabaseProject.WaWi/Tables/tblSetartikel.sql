CREATE TABLE [dbo].[TBL_Setartikel] (
    [SetArtNr]  INT NOT NULL,
    [TeilArtNr] INT NOT NULL,
    [SetMenge]  INT CONSTRAINT [DF_Setartikel_SetMenge] DEFAULT (1) NOT NULL,
    CONSTRAINT [PK_Setartikel] PRIMARY KEY NONCLUSTERED ([SetArtNr] ASC, [TeilArtNr] ASC),
    CONSTRAINT [FK_Setartikel_Artikel] FOREIGN KEY ([SetArtNr]) REFERENCES [dbo].[TBL_Artikel] ([ArtNr]),
    CONSTRAINT [FK_Setartikel_Artikel1] FOREIGN KEY ([TeilArtNr]) REFERENCES [dbo].[TBL_Artikel] ([ArtNr])
);


GO

