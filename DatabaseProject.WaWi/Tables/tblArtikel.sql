CREATE TABLE [dbo].[TBL_Artikel] (
    [ArtNr]            INT           IDENTITY (1001, 1) NOT NULL,
    [ArtBezeichnung]   VARCHAR (60)  NOT NULL,
    [ArtGruppe]        CHAR (2)      NOT NULL,
    [ArtVKPreis]       SMALLMONEY    CONSTRAINT [DF_Artikel_ArtVKPreis] DEFAULT ((0)) NOT NULL,
    [ArtLief]          INT           NOT NULL,
    [ArtEKPreis]       SMALLMONEY    NULL,
    [ArtLieferzeit]    SMALLINT      NULL,
    [ArtMindBestand]   INT           NULL,
    [ArtHinweis]       VARCHAR (500) NULL,
    [ArtMengeBestellt] INT           CONSTRAINT [DF_Artikel_ArtMengeBestellt] DEFAULT ((0)) NOT NULL,
    [ArtUSt]           TINYINT       CONSTRAINT [DF_Artikel_ArtUSt] DEFAULT ((19)) NULL,
    [ArtAktiv]         BIT           CONSTRAINT [DF_Artikel_ArtAktiv] DEFAULT ((1)) NOT NULL,
    [ArtInaktivAm]     SMALLDATETIME NULL,
    [ArtInaktivVon]    [sysname]     NULL,
    CONSTRAINT [PK_Artikel] PRIMARY KEY NONCLUSTERED ([ArtNr] ASC),
    CONSTRAINT [FK_Artikel_ArtikelGruppen] FOREIGN KEY ([ArtGruppe]) REFERENCES [dbo].[TBL_ArtikelGruppen] ([ArtGr]),
    CONSTRAINT [FK_Artikel_Lieferanten] FOREIGN KEY ([ArtLief]) REFERENCES [dbo].[TBL_Lieferanten] ([LiefNr])
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_OrderBy', @value = NULL, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnHidden', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtUSt';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnOrder', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtLief';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnOrder', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtMindBestand';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidth', @value = -1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtLieferzeit';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnHidden', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtNr';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnHidden', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtEKPreis';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidth', @value = -1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtLief';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnHidden', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtMindBestand';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidth', @value = -1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtMindBestand';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidth', @value = -1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtVKPreis';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnHidden', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtLief';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnOrder', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtBezeichnung';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnHidden', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtGruppe';


GO

EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnOrder', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtNr';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidth', @value = -1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtEKPreis';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnHidden', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtLieferzeit';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnOrder', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtEKPreis';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnOrder', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtLieferzeit';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidth', @value = -1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtBezeichnung';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidth', @value = 900, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtMengeBestellt';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnHidden', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtMengeBestellt';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidth', @value = -1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtGruppe';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidth', @value = -1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtNr';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnOrder', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtGruppe';


GO

EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnOrder', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtMengeBestellt';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnOrder', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtVKPreis';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnOrder', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtHinweis';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnHidden', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtBezeichnung';


GO

EXECUTE sp_addextendedproperty @name = N'MS_TableMaxRecords', @value = 10000, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Filter', @value = NULL, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnOrder', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtUSt';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnHidden', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtHinweis';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidth', @value = -1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtUSt';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidth', @value = -1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtHinweis';


GO

EXECUTE sp_addextendedproperty @name = N'MS_ColumnHidden', @value = 0, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TBL_Artikel', @level2type = N'COLUMN', @level2name = N'ArtVKPreis';


GO

