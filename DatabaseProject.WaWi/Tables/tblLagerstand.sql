CREATE TABLE [dbo].[tblLagerstand] (
    [ArtNr]         INT     NOT NULL,
    [LagNr]         TINYINT NOT NULL,
    [LagMenge]      INT     NOT NULL,
    [LagReserviert] INT     CONSTRAINT [DF_tblLagerstand_LagReserviert] DEFAULT (0) NOT NULL,
    CONSTRAINT [PK_tblLagerstand] PRIMARY KEY NONCLUSTERED ([ArtNr] ASC, [LagNr] ASC),
    CONSTRAINT [FK_tblLagerstand_tblArtikel] FOREIGN KEY ([ArtNr]) REFERENCES [dbo].[tblArtikel] ([ArtNr]),
    CONSTRAINT [FK_tblLagerstand_tblLager] FOREIGN KEY ([LagNr]) REFERENCES [dbo].[tblLager] ([LagNr])
);


GO

