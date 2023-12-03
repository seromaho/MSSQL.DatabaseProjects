CREATE TABLE [dbo].[tblPLZGebiete] (
    [PgID]     INT              NOT NULL,
    [PgPLZ]    CHAR (5)         NOT NULL,
    [PgPLZint] INT              NOT NULL,
    [PgOrt]    VARCHAR (100)    NOT NULL,
    [PgGeo]    [sys].[geometry] NULL,
    CONSTRAINT [pk_plzgebiete] PRIMARY KEY CLUSTERED ([PgID] ASC)
);


GO

