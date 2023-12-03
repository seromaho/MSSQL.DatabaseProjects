CREATE TABLE [dbo].[tblKundenInteressen] (
    [KdNr]    INT      NOT NULL,
    [IntCode] CHAR (3) NOT NULL,
    CONSTRAINT [PK_tblKundenInteressen] PRIMARY KEY NONCLUSTERED ([KdNr] ASC, [IntCode] ASC),
    CONSTRAINT [FK_tblKundenInteressen_tblInteressen] FOREIGN KEY ([IntCode]) REFERENCES [dbo].[tblInteressen] ([IntCode]),
    CONSTRAINT [FK_tblKundenInteressen_tblKunden] FOREIGN KEY ([KdNr]) REFERENCES [dbo].[tblKunden] ([KdNr]) NOT FOR REPLICATION
);


GO

