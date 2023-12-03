CREATE TABLE [dbo].[tblBestellungen] (
    [BestNr]         INT           IDENTITY (1000, 1) NOT NULL,
    [BestDatum]      SMALLDATETIME CONSTRAINT [DF_tblLiefBestellungen_LBestDatum] DEFAULT (getdate()) NOT NULL,
    [BestLieferant]  INT           NOT NULL,
    [BestBearbeiter] INT           NOT NULL,
    [BestBemerkung]  VARCHAR (300) NULL,
    [BestStatus]     TINYINT       CONSTRAINT [DF_tblBestellungen_BestStatus] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_tblLiefBestellungen] PRIMARY KEY NONCLUSTERED ([BestNr] ASC),
    CONSTRAINT [FK_tblBestellungen_tblLieferanten] FOREIGN KEY ([BestLieferant]) REFERENCES [dbo].[tblLieferanten] ([LiefNr]),
    CONSTRAINT [FK_tblBestellungen_tblPersonal] FOREIGN KEY ([BestBearbeiter]) REFERENCES [dbo].[tblPersonal] ([PersNr]),
    CONSTRAINT [FK_tblBestellungen_tblStatus] FOREIGN KEY ([BestStatus]) REFERENCES [dbo].[tblStatus] ([StID])
);


GO

