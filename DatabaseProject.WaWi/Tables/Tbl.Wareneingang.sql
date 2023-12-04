CREATE TABLE [dbo].[TBL_Wareneingang] (
    [WaeNr]         INT           NOT NULL,
    [WaeDatum]      SMALLDATETIME CONSTRAINT [DF_WAE_WAEDatum] DEFAULT (getdate()) NOT NULL,
    [WaeLieferant]  INT           NOT NULL,
    [WaeLsNr]       VARCHAR (20)  NULL,
    [WaeBearbeiter] INT           NOT NULL,
    [WaeStatus]     TINYINT       CONSTRAINT [DF_WAE_WAEVerbucht] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_WAE] PRIMARY KEY NONCLUSTERED ([WaeNr] ASC),
    CONSTRAINT [FK_WAE_Lieferanten] FOREIGN KEY ([WaeLieferant]) REFERENCES [dbo].[TBL_Lieferanten] ([LiefNr]),
    CONSTRAINT [FK_WAE_Personal] FOREIGN KEY ([WaeBearbeiter]) REFERENCES [dbo].[TBL_Personal] ([PersNr]),
    CONSTRAINT [FK_Wareneingang_Status] FOREIGN KEY ([WaeStatus]) REFERENCES [dbo].[TBL_Status] ([StID])
);


GO

