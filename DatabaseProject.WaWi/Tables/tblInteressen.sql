CREATE TABLE [dbo].[tblInteressen] (
    [IntCode] CHAR (3)     NOT NULL,
    [IntText] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tblInteressen] PRIMARY KEY NONCLUSTERED ([IntCode] ASC)
);


GO

