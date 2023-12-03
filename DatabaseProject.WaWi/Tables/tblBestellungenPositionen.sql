CREATE TABLE [dbo].[tblBestellungenPositionen] (
    [BestNr]       INT            NOT NULL,
    [BestPos]      SMALLINT       NOT NULL,
    [BestPArtikel] INT            NOT NULL,
    [BestPText]    VARCHAR (100)  NOT NULL,
    [BestPMenge]   INT            CONSTRAINT [DF_tblBestellungenPositionen_BestPMenge] DEFAULT ((1)) NOT NULL,
    [BestPPreis]   SMALLMONEY     NOT NULL,
    [BestPRabatt]  DECIMAL (4, 1) CONSTRAINT [DF_tblLiefBEstellungenPositionen_RePRabatt] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_tblLiefBEstellungenPositionen] PRIMARY KEY NONCLUSTERED ([BestNr] ASC, [BestPos] ASC),
    CONSTRAINT [FK_tblBestellungenPositionen_tblArtikel] FOREIGN KEY ([BestPArtikel]) REFERENCES [dbo].[tblArtikel] ([ArtNr]),
    CONSTRAINT [FK_tblBestellungenPositionen_tblBestellungen] FOREIGN KEY ([BestNr]) REFERENCES [dbo].[tblBestellungen] ([BestNr])
);


GO

