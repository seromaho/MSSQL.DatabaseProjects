CREATE TABLE [dbo].[TBL_Lieferscheine] (
    [LsNr]          INT           NOT NULL,
    [LsDatum]       SMALLDATETIME CONSTRAINT [DF_Lieferscheine_ReDatum] DEFAULT (getdate()) NOT NULL,
    [LsKunde]       INT           NOT NULL,
    [LsLiefAdresse] INT           NULL,
    [LsBearbeiter]  INT           NOT NULL,
    [LsStatus]      TINYINT       CONSTRAINT [DF_Lieferscheine_ReVerbucht] DEFAULT (1) NOT NULL,
    CONSTRAINT [PK_Lieferscheine] PRIMARY KEY NONCLUSTERED ([LsNr] ASC),
    CONSTRAINT [FK_Lieferscheine_Kunden] FOREIGN KEY ([LsKunde]) REFERENCES [dbo].[TBL_Kunden] ([KdNr]),
    CONSTRAINT [FK_Lieferscheine_Personal] FOREIGN KEY ([LsBearbeiter]) REFERENCES [dbo].[TBL_Personal] ([PersNr]),
    CONSTRAINT [FK_Lieferscheine_Status] FOREIGN KEY ([LsStatus]) REFERENCES [dbo].[TBL_Status] ([StID])
);


GO

