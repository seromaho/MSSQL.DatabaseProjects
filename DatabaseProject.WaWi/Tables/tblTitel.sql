CREATE TABLE [dbo].[tblTitel] (
    [TiText]      VARCHAR (40) NOT NULL,
    [TiKategorie] CHAR (1)     CONSTRAINT [DF_tblTitel_TiKategorie] DEFAULT ('A') NOT NULL,
    CONSTRAINT [PK_tblTitel] PRIMARY KEY NONCLUSTERED ([TiText] ASC),
    CONSTRAINT [CK_tblTitel_TiKategorie] CHECK ([TiKategorie]='T' OR [TiKategorie]='A')
);


GO

