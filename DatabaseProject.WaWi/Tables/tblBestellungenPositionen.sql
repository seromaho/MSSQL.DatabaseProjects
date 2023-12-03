CREATE TABLE [dbo].[TBL_BestellungenPositionen] (
    [BestNr]       INT            NOT NULL,
    [BestPos]      SMALLINT       NOT NULL,
    [BestPArtikel] INT            NOT NULL,
    [BestPText]    VARCHAR (100)  NOT NULL,
    [BestPMenge]   INT            CONSTRAINT [DF_BestellungenPositionen_BestPMenge] DEFAULT ((1)) NOT NULL,
    [BestPPreis]   SMALLMONEY     NOT NULL,
    [BestPRabatt]  DECIMAL (4, 1) CONSTRAINT [DF_LiefBEstellungenPositionen_RePRabatt] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_LiefBEstellungenPositionen] PRIMARY KEY NONCLUSTERED ([BestNr] ASC, [BestPos] ASC),
    CONSTRAINT [FK_BestellungenPositionen_Artikel] FOREIGN KEY ([BestPArtikel]) REFERENCES [dbo].[TBL_Artikel] ([ArtNr]),
    CONSTRAINT [FK_BestellungenPositionen_Bestellungen] FOREIGN KEY ([BestNr]) REFERENCES [dbo].[TBL_Bestellungen] ([BestNr])
);


GO

