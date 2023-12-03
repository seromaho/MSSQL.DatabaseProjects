CREATE TABLE [dbo].[tblAnreden] (
    [AnrNr]          TINYINT      NOT NULL,
    [AnrText]        VARCHAR (20) NULL,
    [AnrBriefkopf]   VARCHAR (20) NULL,
    [AnrBriefanrede] VARCHAR (40) NULL,
    CONSTRAINT [PK_tblAnreden] PRIMARY KEY CLUSTERED ([AnrNr] ASC)
);


GO

