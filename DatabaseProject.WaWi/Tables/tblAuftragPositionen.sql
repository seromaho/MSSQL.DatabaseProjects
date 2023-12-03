CREATE TABLE [dbo].[TBL_AuftragPositionen] (
    [AufNr]       INT           NOT NULL,
    [AufPos]      SMALLINT      NOT NULL,
    [AufPArtikel] INT           NOT NULL,
    [AufPText]    VARCHAR (100) NOT NULL,
    [AufPMenge]   INT           CONSTRAINT [DF_AuftraegePositionen_AufPMenge] DEFAULT ((1)) NOT NULL,
    [AufPStatus]  TINYINT       CONSTRAINT [DF_AuftraegePositionen_AufPStatus] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_AuftragPositionen] PRIMARY KEY NONCLUSTERED ([AufNr] ASC, [AufPos] ASC),
    CONSTRAINT [FK_AuftragPositionen_Artikel] FOREIGN KEY ([AufPArtikel]) REFERENCES [dbo].[TBL_Artikel] ([ArtNr]),
    CONSTRAINT [FK_AuftragPositionen_Auftrag] FOREIGN KEY ([AufNr]) REFERENCES [dbo].[TBL_Auftrag] ([AufNr])
);


GO

