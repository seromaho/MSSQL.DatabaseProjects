CREATE TABLE [dbo].[TBL_Aktionskunden] (
    [AktNr]       INT NOT NULL,
    [KdNr]        INT NOT NULL,
    [AktResponse] BIT NOT NULL,
    CONSTRAINT [PK_Aktionskunden] PRIMARY KEY CLUSTERED ([AktNr] ASC, [KdNr] ASC),
    CONSTRAINT [FK_Aktionskunden_Kunden] FOREIGN KEY ([KdNr]) REFERENCES [dbo].[TBL_Kunden] ([KdNr]),
    CONSTRAINT [FK_Aktionskunden_Marketingaktionen] FOREIGN KEY ([AktNr]) REFERENCES [dbo].[TBL_Marketingaktionen] ([AktNr])
);


GO

