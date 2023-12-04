CREATE TABLE [dbo].[TBL_Rechnungen] (
    [ReNr]          INT            IDENTITY (1, 1) NOT NULL,
    [ReNrFibu]      INT            NULL,
    [ReDatum]       SMALLDATETIME  CONSTRAINT [DF_Rechnungen_ReDatum] DEFAULT (getdate()) NOT NULL,
    [ReKunde]       INT            NOT NULL,
    [ReLiefAdresse] INT            NULL,
    [ReBearbeiter]  INT            NOT NULL,
    [ReSkonto]      DECIMAL (3, 1) CONSTRAINT [DF_Rechnungen_ReSkonto] DEFAULT (0) NULL,
    [ReSkontoTage]  TINYINT        CONSTRAINT [DF_Rechnungen_ReSkontoTage] DEFAULT (0) NULL,
    [ReZiel]        TINYINT        CONSTRAINT [DF_Rechnungen_ReZiel] DEFAULT (0) NULL,
    [ReRabatt]      DECIMAL (3, 1) CONSTRAINT [DF_Rechnungen_ReRabatt] DEFAULT (0) NULL,
    [ReZahlart]     TINYINT        NOT NULL,
    [ReStatus]      TINYINT        CONSTRAINT [DF_Rechnungen_ReVerbucht] DEFAULT (1) NOT NULL,
    [ReMarAktion]   INT            NULL,
    CONSTRAINT [PK_Rechnungen] PRIMARY KEY NONCLUSTERED ([ReNr] ASC),
    CONSTRAINT [FK_Rechnungen_Kunden] FOREIGN KEY ([ReKunde]) REFERENCES [dbo].[TBL_Kunden] ([KdNr]),
    CONSTRAINT [FK_Rechnungen_Personal] FOREIGN KEY ([ReBearbeiter]) REFERENCES [dbo].[TBL_Personal] ([PersNr]),
    CONSTRAINT [FK_Rechnungen_Status] FOREIGN KEY ([ReStatus]) REFERENCES [dbo].[TBL_Status] ([StID])
);


GO

