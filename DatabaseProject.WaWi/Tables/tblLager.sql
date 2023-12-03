CREATE TABLE [dbo].[tblLager] (
    [LagNr]   TINYINT      NOT NULL,
    [LagName] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tblLager] PRIMARY KEY NONCLUSTERED ([LagNr] ASC)
);


GO

