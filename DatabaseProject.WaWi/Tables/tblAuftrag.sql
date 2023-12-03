CREATE TABLE [dbo].[TBL_Auftrag] (
    [AufNr]         INT           IDENTITY (100001, 1) NOT NULL,
    [AufDatum]      SMALLDATETIME CONSTRAINT [DF_Auftrag_AufDatum] DEFAULT (getdate()) NOT NULL,
    [AufKunde]      INT           NOT NULL,
    [AufBearbeiter] INT           NOT NULL,
    [AufStatus]     TINYINT       CONSTRAINT [DF_Auftrag_AufStatus] DEFAULT (1) NOT NULL,
    CONSTRAINT [PK_Auftrag] PRIMARY KEY NONCLUSTERED ([AufNr] ASC),
    CONSTRAINT [FK_Auftrag_Kunden] FOREIGN KEY ([AufKunde]) REFERENCES [dbo].[TBL_Kunden] ([KdNr]),
    CONSTRAINT [FK_Auftrag_Personal] FOREIGN KEY ([AufBearbeiter]) REFERENCES [dbo].[TBL_Personal] ([PersNr]),
    CONSTRAINT [FK_Auftrag_Status] FOREIGN KEY ([AufStatus]) REFERENCES [dbo].[TBL_Status] ([StID])
);


GO

