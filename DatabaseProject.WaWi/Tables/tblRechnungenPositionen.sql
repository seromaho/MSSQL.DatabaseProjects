CREATE TABLE [dbo].[tblRechnungenPositionen] (
    [ReNr]       INT            NOT NULL,
    [RePos]      SMALLINT       NOT NULL,
    [RePArtikel] INT            NOT NULL,
    [RePText]    VARCHAR (100)  NOT NULL,
    [RePMenge]   INT            NOT NULL,
    [RePPreis]   SMALLMONEY     NOT NULL,
    [RePUStSatz] TINYINT        NOT NULL,
    [RePLager]   TINYINT        NOT NULL,
    [RePRabatt]  DECIMAL (4, 1) CONSTRAINT [DF_tblRechnungenPositionen_RePRabatt] DEFAULT ((0)) NULL,
    [RePAufNr]   INT            NULL,
    [RePAufPos]  SMALLINT       NULL,
    [RePLsNr]    INT            NULL,
    [RePLsPos]   SMALLINT       NULL,
    CONSTRAINT [PK_tblRechnungenPositionen] PRIMARY KEY NONCLUSTERED ([ReNr] ASC, [RePos] ASC),
    CONSTRAINT [FK_tblRechnungenPositionen_tblArtikel] FOREIGN KEY ([RePArtikel]) REFERENCES [dbo].[tblArtikel] ([ArtNr]),
    CONSTRAINT [FK_tblRechnungenPositionen_tblAuftragPositionen] FOREIGN KEY ([RePAufNr], [RePAufPos]) REFERENCES [dbo].[tblAuftragPositionen] ([AufNr], [AufPos]),
    CONSTRAINT [FK_tblRechnungenPositionen_tblLieferscheinePositionen] FOREIGN KEY ([RePLsNr], [RePLsPos]) REFERENCES [dbo].[tblLieferscheinePositionen] ([LsNr], [LsPos]),
    CONSTRAINT [FK_tblRechnungenPositionen_tblRechnungen] FOREIGN KEY ([ReNr]) REFERENCES [dbo].[tblRechnungen] ([ReNr])
);


GO

CREATE NONCLUSTERED INDEX [IX_tblRechnungenPositionen_Lieferschein]
    ON [dbo].[tblRechnungenPositionen]([RePLsNr] ASC, [RePLsPos] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_tblRechnungenPositionen_Auftrag]
    ON [dbo].[tblRechnungenPositionen]([RePAufNr] ASC, [RePAufPos] ASC);


GO

