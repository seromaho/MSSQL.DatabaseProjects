CREATE TABLE [dbo].[TBL_WareneingangPositionen] (
    [WaeNr]       INT           NOT NULL,
    [WaePos]      SMALLINT      NOT NULL,
    [WaePArtikel] INT           NOT NULL,
    [WaePText]    VARCHAR (100) NOT NULL,
    [WaePMenge]   INT           NOT NULL,
    [WaePLager]   TINYINT       NULL,
    CONSTRAINT [PK_WAEPositionen] PRIMARY KEY NONCLUSTERED ([WaeNr] ASC, [WaePos] ASC),
    CONSTRAINT [FK_WAEPositionen_Artikel] FOREIGN KEY ([WaePArtikel]) REFERENCES [dbo].[TBL_Artikel] ([ArtNr]),
    CONSTRAINT [FK_WAEPositionen_WAE] FOREIGN KEY ([WaeNr]) REFERENCES [dbo].[TBL_Wareneingang] ([WaeNr]),
    CONSTRAINT [FK_WareneingangPositionen_Lager] FOREIGN KEY ([WaePLager]) REFERENCES [dbo].[TBL_Lager] ([LagNr])
);


GO

