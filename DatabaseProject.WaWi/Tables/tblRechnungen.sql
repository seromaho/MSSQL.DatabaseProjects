CREATE TABLE [dbo].[tblRechnungen] (
    [ReNr]          INT            IDENTITY (1, 1) NOT NULL,
    [ReNrFibu]      INT            NULL,
    [ReDatum]       SMALLDATETIME  CONSTRAINT [DF_tblRechnungen_ReDatum] DEFAULT (getdate()) NOT NULL,
    [ReKunde]       INT            NOT NULL,
    [ReLiefAdresse] INT            NULL,
    [ReBearbeiter]  INT            NOT NULL,
    [ReSkonto]      DECIMAL (3, 1) CONSTRAINT [DF_tblRechnungen_ReSkonto] DEFAULT (0) NULL,
    [ReSkontoTage]  TINYINT        CONSTRAINT [DF_tblRechnungen_ReSkontoTage] DEFAULT (0) NULL,
    [ReZiel]        TINYINT        CONSTRAINT [DF_tblRechnungen_ReZiel] DEFAULT (0) NULL,
    [ReRabatt]      DECIMAL (3, 1) CONSTRAINT [DF_tblRechnungen_ReRabatt] DEFAULT (0) NULL,
    [ReZahlart]     TINYINT        NOT NULL,
    [ReStatus]      TINYINT        CONSTRAINT [DF_tblRechnungen_ReVerbucht] DEFAULT (1) NOT NULL,
    [ReMarAktion]   INT            NULL,
    CONSTRAINT [PK_tblRechnungen] PRIMARY KEY NONCLUSTERED ([ReNr] ASC),
    CONSTRAINT [FK_tblRechnungen_tblKunden] FOREIGN KEY ([ReKunde]) REFERENCES [dbo].[tblKunden] ([KdNr]),
    CONSTRAINT [FK_tblRechnungen_tblPersonal] FOREIGN KEY ([ReBearbeiter]) REFERENCES [dbo].[tblPersonal] ([PersNr]),
    CONSTRAINT [FK_tblRechnungen_tblStatus] FOREIGN KEY ([ReStatus]) REFERENCES [dbo].[tblStatus] ([StID])
);


GO

