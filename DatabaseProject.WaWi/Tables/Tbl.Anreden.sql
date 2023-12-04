CREATE TABLE [dbo].[TBL_Anreden] (
    [AnrNr]          TINYINT      NOT NULL,
    [AnrText]        VARCHAR (20) NULL,
    [AnrBriefkopf]   VARCHAR (20) NULL,
    [AnrBriefanrede] VARCHAR (40) NULL,
    CONSTRAINT [PK_Anreden] PRIMARY KEY CLUSTERED ([AnrNr] ASC)
);


GO

