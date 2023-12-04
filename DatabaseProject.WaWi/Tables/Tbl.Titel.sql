CREATE TABLE [dbo].[TBL_Titel] (
    [TiText]      VARCHAR (40) NOT NULL,
    [TiKategorie] CHAR (1)     CONSTRAINT [DF_Titel_TiKategorie] DEFAULT ('A') NOT NULL,
    CONSTRAINT [PK_Titel] PRIMARY KEY NONCLUSTERED ([TiText] ASC),
    CONSTRAINT [CK_Titel_TiKategorie] CHECK ([TiKategorie]='T' OR [TiKategorie]='A')
);


GO

