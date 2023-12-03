CREATE TABLE [dbo].[TBL_Lieferanten] (
    [LiefNr]              INT            NOT NULL,
    [LiefFirma1]          VARCHAR (50)   NOT NULL,
    [LiefFirma2]          VARCHAR (50)   NULL,
    [LiefStrasse]         VARCHAR (50)   NULL,
    [LiefLand]            CHAR (3)       NULL,
    [LiefPlz]             CHAR (5)       NULL,
    [LiefOrt]             VARCHAR (60)   NULL,
    [LiefTel1]            VARCHAR (15)   NULL,
    [LiefTel2]            VARCHAR (15)   NULL,
    [LiefFax1]            VARCHAR (15)   NULL,
    [LiefFax2]            VARCHAR (50)   NULL,
    [LiefAnsprechpartner] VARCHAR (60)   NULL,
    [LiefEmail1]          VARCHAR (60)   NULL,
    [LiefEmail2]          VARCHAR (60)   NULL,
    [LiefWWW]             VARCHAR (50)   NULL,
    [LiefSkonto]          DECIMAL (3, 1) CONSTRAINT [DF_Lieferanten_LiefSkonto] DEFAULT ((0)) NULL,
    [LiefSkontoTage]      TINYINT        CONSTRAINT [DF_Lieferanten_LiefSkontoTage] DEFAULT ((0)) NULL,
    [LiefZiel]            TINYINT        CONSTRAINT [DF_Lieferanten_LiefZiel] DEFAULT ((14)) NULL,
    [LiefAktiv]           BIT            CONSTRAINT [DF_Lieferanten_LiefAktiv] DEFAULT ((1)) NOT NULL,
    [LiefHinweis]         VARCHAR (300)  NULL,
    [LiefErfasst]         SMALLDATETIME  CONSTRAINT [DF_Lieferanten_LiefErfasst] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Lieferanten] PRIMARY KEY NONCLUSTERED ([LiefNr] ASC)
);


GO

