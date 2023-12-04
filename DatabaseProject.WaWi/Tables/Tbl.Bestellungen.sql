CREATE TABLE [dbo].[TBL_Bestellungen] (
    [BestNr]         INT           IDENTITY (1000, 1) NOT NULL,
    [BestDatum]      SMALLDATETIME CONSTRAINT [DF_LiefBestellungen_LBestDatum] DEFAULT (getdate()) NOT NULL,
    [BestLieferant]  INT           NOT NULL,
    [BestBearbeiter] INT           NOT NULL,
    [BestBemerkung]  VARCHAR (300) NULL,
    [BestStatus]     TINYINT       CONSTRAINT [DF_Bestellungen_BestStatus] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_LiefBestellungen] PRIMARY KEY NONCLUSTERED ([BestNr] ASC),
    CONSTRAINT [FK_Bestellungen_Lieferanten] FOREIGN KEY ([BestLieferant]) REFERENCES [dbo].[TBL_Lieferanten] ([LiefNr]),
    CONSTRAINT [FK_Bestellungen_Personal] FOREIGN KEY ([BestBearbeiter]) REFERENCES [dbo].[TBL_Personal] ([PersNr]),
    CONSTRAINT [FK_Bestellungen_Status] FOREIGN KEY ([BestStatus]) REFERENCES [dbo].[TBL_Status] ([StID])
);


GO

