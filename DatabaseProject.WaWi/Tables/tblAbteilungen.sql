CREATE TABLE [dbo].[tblAbteilungen] (
    [AbtNr]   CHAR (2)     NOT NULL,
    [AbtText] VARCHAR (50) NULL,
    CONSTRAINT [PK_tblPositionen] PRIMARY KEY CLUSTERED ([AbtNr] ASC)
);


GO

