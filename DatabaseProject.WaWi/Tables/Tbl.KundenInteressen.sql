CREATE TABLE [dbo].[TBL_KundenInteressen] (
    [KdNr]    INT      NOT NULL,
    [IntCode] CHAR (3) NOT NULL,
    CONSTRAINT [PK_KundenInteressen] PRIMARY KEY NONCLUSTERED ([KdNr] ASC, [IntCode] ASC),
    CONSTRAINT [FK_KundenInteressen_Interessen] FOREIGN KEY ([IntCode]) REFERENCES [dbo].[TBL_Interessen] ([IntCode]),
    CONSTRAINT [FK_KundenInteressen_Kunden] FOREIGN KEY ([KdNr]) REFERENCES [dbo].[TBL_Kunden] ([KdNr]) NOT FOR REPLICATION
);


GO

