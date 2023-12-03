CREATE TABLE [dbo].[tblLieferscheine] (
    [LsNr]          INT           NOT NULL,
    [LsDatum]       SMALLDATETIME CONSTRAINT [DF_tblLieferscheine_ReDatum] DEFAULT (getdate()) NOT NULL,
    [LsKunde]       INT           NOT NULL,
    [LsLiefAdresse] INT           NULL,
    [LsBearbeiter]  INT           NOT NULL,
    [LsStatus]      TINYINT       CONSTRAINT [DF_tblLieferscheine_ReVerbucht] DEFAULT (1) NOT NULL,
    CONSTRAINT [PK_tblLieferscheine] PRIMARY KEY NONCLUSTERED ([LsNr] ASC),
    CONSTRAINT [FK_tblLieferscheine_tblKunden] FOREIGN KEY ([LsKunde]) REFERENCES [dbo].[tblKunden] ([KdNr]),
    CONSTRAINT [FK_tblLieferscheine_tblPersonal] FOREIGN KEY ([LsBearbeiter]) REFERENCES [dbo].[tblPersonal] ([PersNr]),
    CONSTRAINT [FK_tblLieferscheine_tblStatus] FOREIGN KEY ([LsStatus]) REFERENCES [dbo].[tblStatus] ([StID])
);


GO

