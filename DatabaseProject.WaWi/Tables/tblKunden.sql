CREATE TABLE [dbo].[TBL_Kunden] (
    [KdNr]           INT            NOT NULL,
    [KdNachname]     VARCHAR (50)   NULL,
    [KdVorname]      VARCHAR (50)   NULL,
    [KdTitel]        VARCHAR (15)   NULL,
    [KdAkadGrad]     VARCHAR (15)   NULL,
    [KdFirma1]       VARCHAR (50)   NULL,
    [KdFirma2]       VARCHAR (50)   NULL,
    [KdGeschlecht]   TINYINT        NOT NULL,
    [KdStrasse]      VARCHAR (50)   NULL,
    [KdLand]         VARCHAR (3)    NULL,
    [KdPlz]          VARCHAR (10)   NULL,
    [KdOrt]          VARCHAR (50)   NULL,
    [KdTelefon]      VARCHAR (20)   NULL,
    [KdFax]          VARCHAR (20)   NULL,
    [KdMobil]        VARCHAR (20)   NULL,
    [KdEmail]        VARCHAR (60)   NULL,
    [KdWWW]          VARCHAR (50)   NULL,
    [KdGebDatum]     DATE           NULL,
    [KdSkonto]       DECIMAL (2, 1) CONSTRAINT [DF_Kunden_KdSkonto] DEFAULT ((0)) NOT NULL,
    [KdSkontoTage]   TINYINT        CONSTRAINT [DF_Kunden_KsSkontoTage] DEFAULT ((0)) NOT NULL,
    [KdZiel]         TINYINT        CONSTRAINT [DF_Kunden_KdZiel] DEFAULT ((0)) NOT NULL,
    [KdLieferschein] BIT            CONSTRAINT [DF_Kunden_KdLieferschein] DEFAULT ((0)) NOT NULL,
    [KdGesperrt]     BIT            CONSTRAINT [DF_Kunden_KdGesperrt] DEFAULT ((0)) NOT NULL,
    [KdHinweis]      VARCHAR (300)  NULL,
    [KdErfasst]      SMALLDATETIME  CONSTRAINT [DF_Kunden_KdErfasst] DEFAULT (getdate()) NOT NULL,
    [KdGeaendert]    SMALLDATETIME  NULL,
    [KdAktiv]        BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Kunden] PRIMARY KEY NONCLUSTERED ([KdNr] ASC),
    CONSTRAINT [FK_Kunden_Anreden] FOREIGN KEY ([KdGeschlecht]) REFERENCES [dbo].[TBL_Anreden] ([AnrNr])
);


GO

