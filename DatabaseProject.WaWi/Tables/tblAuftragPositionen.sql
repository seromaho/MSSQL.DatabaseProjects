CREATE TABLE [dbo].[tblAuftragPositionen] (
    [AufNr]       INT           NOT NULL,
    [AufPos]      SMALLINT      NOT NULL,
    [AufPArtikel] INT           NOT NULL,
    [AufPText]    VARCHAR (100) NOT NULL,
    [AufPMenge]   INT           CONSTRAINT [DF_tblAuftraegePositionen_AufPMenge] DEFAULT ((1)) NOT NULL,
    [AufPStatus]  TINYINT       CONSTRAINT [DF_tblAuftraegePositionen_AufPStatus] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_tblAuftragPositionen] PRIMARY KEY NONCLUSTERED ([AufNr] ASC, [AufPos] ASC),
    CONSTRAINT [FK_tblAuftragPositionen_tblArtikel] FOREIGN KEY ([AufPArtikel]) REFERENCES [dbo].[tblArtikel] ([ArtNr]),
    CONSTRAINT [FK_tblAuftragPositionen_tblAuftrag] FOREIGN KEY ([AufNr]) REFERENCES [dbo].[tblAuftrag] ([AufNr])
);


GO

