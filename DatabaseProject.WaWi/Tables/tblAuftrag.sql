CREATE TABLE [dbo].[tblAuftrag] (
    [AufNr]         INT           IDENTITY (100001, 1) NOT NULL,
    [AufDatum]      SMALLDATETIME CONSTRAINT [DF_tblAuftrag_AufDatum] DEFAULT (getdate()) NOT NULL,
    [AufKunde]      INT           NOT NULL,
    [AufBearbeiter] INT           NOT NULL,
    [AufStatus]     TINYINT       CONSTRAINT [DF_tblAuftrag_AufStatus] DEFAULT (1) NOT NULL,
    CONSTRAINT [PK_tblAuftrag] PRIMARY KEY NONCLUSTERED ([AufNr] ASC),
    CONSTRAINT [FK_tblAuftrag_tblKunden] FOREIGN KEY ([AufKunde]) REFERENCES [dbo].[tblKunden] ([KdNr]),
    CONSTRAINT [FK_tblAuftrag_tblPersonal] FOREIGN KEY ([AufBearbeiter]) REFERENCES [dbo].[tblPersonal] ([PersNr]),
    CONSTRAINT [FK_tblAuftrag_tblStatus] FOREIGN KEY ([AufStatus]) REFERENCES [dbo].[tblStatus] ([StID])
);


GO

