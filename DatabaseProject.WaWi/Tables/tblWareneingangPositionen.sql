CREATE TABLE [dbo].[tblWareneingangPositionen] (
    [WaeNr]       INT           NOT NULL,
    [WaePos]      SMALLINT      NOT NULL,
    [WaePArtikel] INT           NOT NULL,
    [WaePText]    VARCHAR (100) NOT NULL,
    [WaePMenge]   INT           NOT NULL,
    [WaePLager]   TINYINT       NULL,
    CONSTRAINT [PK_tblWAEPositionen] PRIMARY KEY NONCLUSTERED ([WaeNr] ASC, [WaePos] ASC),
    CONSTRAINT [FK_tblWAEPositionen_tblArtikel] FOREIGN KEY ([WaePArtikel]) REFERENCES [dbo].[tblArtikel] ([ArtNr]),
    CONSTRAINT [FK_tblWAEPositionen_tblWAE] FOREIGN KEY ([WaeNr]) REFERENCES [dbo].[tblWareneingang] ([WaeNr]),
    CONSTRAINT [FK_tblWareneingangPositionen_tblLager] FOREIGN KEY ([WaePLager]) REFERENCES [dbo].[tblLager] ([LagNr])
);


GO

