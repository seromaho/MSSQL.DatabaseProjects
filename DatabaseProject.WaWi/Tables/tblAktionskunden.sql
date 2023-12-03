CREATE TABLE [dbo].[tblAktionskunden] (
    [AktNr]       INT NOT NULL,
    [KdNr]        INT NOT NULL,
    [AktResponse] BIT NOT NULL,
    CONSTRAINT [PK_tblAktionskunden] PRIMARY KEY CLUSTERED ([AktNr] ASC, [KdNr] ASC),
    CONSTRAINT [FK_tblAktionskunden_tblKunden] FOREIGN KEY ([KdNr]) REFERENCES [dbo].[tblKunden] ([KdNr]),
    CONSTRAINT [FK_tblAktionskunden_tblMarketingaktionen] FOREIGN KEY ([AktNr]) REFERENCES [dbo].[tblMarketingaktionen] ([AktNr])
);


GO

