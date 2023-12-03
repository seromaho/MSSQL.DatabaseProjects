CREATE TABLE [dbo].[tblLieferscheinePositionen] (
    [LsNr]       INT            NOT NULL,
    [LsPos]      SMALLINT       NOT NULL,
    [LsPArtikel] INT            NOT NULL,
    [LsPText]    VARCHAR (100)  NOT NULL,
    [LsPMenge]   INT            CONSTRAINT [DF_tblLieferscheinePositionen_LsPMenge] DEFAULT ((1)) NOT NULL,
    [LsPPreis]   SMALLMONEY     NOT NULL,
    [LsPUStSatz] TINYINT        NOT NULL,
    [LsPLager]   TINYINT        NOT NULL,
    [LsPRabatt]  DECIMAL (4, 1) CONSTRAINT [DF_tblLieferscheinePositionen_RePRabatt] DEFAULT ((0)) NULL,
    [LsPAufNr]   INT            NULL,
    [LsPAufPos]  SMALLINT       NULL,
    CONSTRAINT [PK_tblLieferscheinePositionen] PRIMARY KEY NONCLUSTERED ([LsNr] ASC, [LsPos] ASC),
    CONSTRAINT [FK_tblLieferscheinePositionen_tblArtikel] FOREIGN KEY ([LsPArtikel]) REFERENCES [dbo].[tblArtikel] ([ArtNr]),
    CONSTRAINT [FK_tblLieferscheinePositionen_tblAuftragPositionen] FOREIGN KEY ([LsPAufNr], [LsPAufPos]) REFERENCES [dbo].[tblAuftragPositionen] ([AufNr], [AufPos]),
    CONSTRAINT [FK_tblLieferscheinePositionen_tblLieferscheine] FOREIGN KEY ([LsNr]) REFERENCES [dbo].[tblLieferscheine] ([LsNr])
);


GO

CREATE NONCLUSTERED INDEX [IX_tblLieferscheinePositionen_Auftrag]
    ON [dbo].[tblLieferscheinePositionen]([LsPAufNr] ASC, [LsPAufPos] ASC);


GO

