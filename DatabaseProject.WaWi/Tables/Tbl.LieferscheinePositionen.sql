CREATE TABLE [dbo].[TBL_LieferscheinePositionen] (
    [LsNr]       INT            NOT NULL,
    [LsPos]      SMALLINT       NOT NULL,
    [LsPArtikel] INT            NOT NULL,
    [LsPText]    VARCHAR (100)  NOT NULL,
    [LsPMenge]   INT            CONSTRAINT [DF_LieferscheinePositionen_LsPMenge] DEFAULT ((1)) NOT NULL,
    [LsPPreis]   SMALLMONEY     NOT NULL,
    [LsPUStSatz] TINYINT        NOT NULL,
    [LsPLager]   TINYINT        NOT NULL,
    [LsPRabatt]  DECIMAL (4, 1) CONSTRAINT [DF_LieferscheinePositionen_RePRabatt] DEFAULT ((0)) NULL,
    [LsPAufNr]   INT            NULL,
    [LsPAufPos]  SMALLINT       NULL,
    CONSTRAINT [PK_LieferscheinePositionen] PRIMARY KEY NONCLUSTERED ([LsNr] ASC, [LsPos] ASC),
    CONSTRAINT [FK_LieferscheinePositionen_Artikel] FOREIGN KEY ([LsPArtikel]) REFERENCES [dbo].[TBL_Artikel] ([ArtNr]),
    CONSTRAINT [FK_LieferscheinePositionen_AuftragPositionen] FOREIGN KEY ([LsPAufNr], [LsPAufPos]) REFERENCES [dbo].[TBL_AuftragPositionen] ([AufNr], [AufPos]),
    CONSTRAINT [FK_LieferscheinePositionen_Lieferscheine] FOREIGN KEY ([LsNr]) REFERENCES [dbo].[TBL_Lieferscheine] ([LsNr])
);


GO

CREATE NONCLUSTERED INDEX [IX_LieferscheinePositionen_Auftrag]
    ON [dbo].[TBL_LieferscheinePositionen]([LsPAufNr] ASC, [LsPAufPos] ASC);


GO

