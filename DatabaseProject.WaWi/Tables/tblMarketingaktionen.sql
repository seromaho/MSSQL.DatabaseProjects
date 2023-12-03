CREATE TABLE [dbo].[tblMarketingaktionen] (
    [AktNr]           INT           NOT NULL,
    [AktDatum]        SMALLDATETIME NOT NULL,
    [AktBeschreibung] VARCHAR (300) NOT NULL,
    CONSTRAINT [PK_tblMarketingaktionen] PRIMARY KEY NONCLUSTERED ([AktNr] ASC)
);


GO

