CREATE TABLE [dbo].[TBL_Marketingaktionen] (
    [AktNr]           INT           NOT NULL,
    [AktDatum]        SMALLDATETIME NOT NULL,
    [AktBeschreibung] VARCHAR (300) NOT NULL,
    CONSTRAINT [PK_Marketingaktionen] PRIMARY KEY NONCLUSTERED ([AktNr] ASC)
);


GO

