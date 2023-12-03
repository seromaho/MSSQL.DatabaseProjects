CREATE TABLE [dbo].[TBL_Lagerstand] (
    [ArtNr]         INT     NOT NULL,
    [LagNr]         TINYINT NOT NULL,
    [LagMenge]      INT     NOT NULL,
    [LagReserviert] INT     CONSTRAINT [DF_Lagerstand_LagReserviert] DEFAULT (0) NOT NULL,
    CONSTRAINT [PK_Lagerstand] PRIMARY KEY NONCLUSTERED ([ArtNr] ASC, [LagNr] ASC),
    CONSTRAINT [FK_Lagerstand_Artikel] FOREIGN KEY ([ArtNr]) REFERENCES [dbo].[TBL_Artikel] ([ArtNr]),
    CONSTRAINT [FK_Lagerstand_Lager] FOREIGN KEY ([LagNr]) REFERENCES [dbo].[TBL_Lager] ([LagNr])
);


GO

