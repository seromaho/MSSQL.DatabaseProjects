CREATE TABLE [dbo].[tblWareneingang] (
    [WaeNr]         INT           NOT NULL,
    [WaeDatum]      SMALLDATETIME CONSTRAINT [DF_tblWAE_WAEDatum] DEFAULT (getdate()) NOT NULL,
    [WaeLieferant]  INT           NOT NULL,
    [WaeLsNr]       VARCHAR (20)  NULL,
    [WaeBearbeiter] INT           NOT NULL,
    [WaeStatus]     TINYINT       CONSTRAINT [DF_tblWAE_WAEVerbucht] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_tblWAE] PRIMARY KEY NONCLUSTERED ([WaeNr] ASC),
    CONSTRAINT [FK_tblWAE_tblLieferanten] FOREIGN KEY ([WaeLieferant]) REFERENCES [dbo].[tblLieferanten] ([LiefNr]),
    CONSTRAINT [FK_tblWAE_tblPersonal] FOREIGN KEY ([WaeBearbeiter]) REFERENCES [dbo].[tblPersonal] ([PersNr]),
    CONSTRAINT [FK_tblWareneingang_tblStatus] FOREIGN KEY ([WaeStatus]) REFERENCES [dbo].[tblStatus] ([StID])
);


GO

