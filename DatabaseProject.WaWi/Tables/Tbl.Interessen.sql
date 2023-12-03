CREATE TABLE [dbo].[TBL_Interessen] (
    [IntCode] CHAR (3)     NOT NULL,
    [IntText] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Interessen] PRIMARY KEY NONCLUSTERED ([IntCode] ASC)
);


GO

