CREATE TABLE [dbo].[TBL_RechnungenPositionen] (
    [ReNr]       INT            NOT NULL,
    [RePos]      SMALLINT       NOT NULL,
    [RePArtikel] INT            NOT NULL,
    [RePText]    VARCHAR (100)  NOT NULL,
    [RePMenge]   INT            NOT NULL,
    [RePPreis]   SMALLMONEY     NOT NULL,
    [RePUStSatz] TINYINT        NOT NULL,
    [RePLager]   TINYINT        NOT NULL,
    [RePRabatt]  DECIMAL (4, 1) CONSTRAINT [DF_RechnungenPositionen_RePRabatt] DEFAULT ((0)) NULL,
    [RePAufNr]   INT            NULL,
    [RePAufPos]  SMALLINT       NULL,
    [RePLsNr]    INT            NULL,
    [RePLsPos]   SMALLINT       NULL,
    CONSTRAINT [PK_RechnungenPositionen] PRIMARY KEY NONCLUSTERED ([ReNr] ASC, [RePos] ASC),
    CONSTRAINT [FK_RechnungenPositionen_Artikel] FOREIGN KEY ([RePArtikel]) REFERENCES [dbo].[TBL_Artikel] ([ArtNr]),
    CONSTRAINT [FK_RechnungenPositionen_AuftragPositionen] FOREIGN KEY ([RePAufNr], [RePAufPos]) REFERENCES [dbo].[TBL_AuftragPositionen] ([AufNr], [AufPos]),
    CONSTRAINT [FK_RechnungenPositionen_LieferscheinePositionen] FOREIGN KEY ([RePLsNr], [RePLsPos]) REFERENCES [dbo].[TBL_LieferscheinePositionen] ([LsNr], [LsPos]),
    CONSTRAINT [FK_RechnungenPositionen_Rechnungen] FOREIGN KEY ([ReNr]) REFERENCES [dbo].[TBL_Rechnungen] ([ReNr])
);


GO

CREATE NONCLUSTERED INDEX [IX_RechnungenPositionen_Lieferschein]
    ON [dbo].[TBL_RechnungenPositionen]([RePLsNr] ASC, [RePLsPos] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_RechnungenPositionen_Auftrag]
    ON [dbo].[TBL_RechnungenPositionen]([RePAufNr] ASC, [RePAufPos] ASC);


GO

