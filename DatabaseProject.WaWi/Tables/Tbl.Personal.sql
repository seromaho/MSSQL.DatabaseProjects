CREATE TABLE [dbo].[TBL_Personal] (
    [PersNr]         INT               NOT NULL,
    [PersAbtlg]      CHAR (2)          NOT NULL,
    [PersNachname]   VARCHAR (50)      NOT NULL,
    [PersVorname]    VARCHAR (50)      NOT NULL,
    [PersTitel]      VARCHAR (15)      NULL,
    [PersAkadGrad]   VARCHAR (15)      NULL,
    [PersGeschlecht] TINYINT           NOT NULL,
    [PersSozVersNr]  CHAR (4)          NULL,
    [PersGebDatum]   DATE              NULL,
    [PersFamStand]   TINYINT           NULL,
    [PersStrasse]    VARCHAR (50)      NULL,
    [PersLand]       CHAR (3)          CONSTRAINT [DF_Personal_PersLand] DEFAULT ('D') NULL,
    [PersPlz]        CHAR (5)          NULL,
    [PersOrt]        VARCHAR (60)      NULL,
    [PersTelefon]    VARCHAR (20)      NULL,
    [PersMobil]      VARCHAR (20)      NULL,
    [PersBank]       VARCHAR (30)      NULL,
    [PersBLZ]        VARCHAR (10)      NULL,
    [PersKtoNr]      VARCHAR (15)      NULL,
    [PersEintritt]   SMALLDATETIME     CONSTRAINT [DF_Personal_PersEintritt] DEFAULT (getdate()) NULL,
    [PersAustritt]   SMALLDATETIME     NULL,
    [PersHinweis]    VARCHAR (300)     NULL,
    [PersGeogr]      [sys].[geography] NULL,
    [PersGeom]       [sys].[geometry]  NULL,
    CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED ([PersNr] ASC),
    CONSTRAINT [FK_Personal_Abteilungen] FOREIGN KEY ([PersAbtlg]) REFERENCES [dbo].[TBL_Abteilungen] ([AbtNr]),
    CONSTRAINT [FK_Personal_Anreden] FOREIGN KEY ([PersGeschlecht]) REFERENCES [dbo].[TBL_Anreden] ([AnrNr])
);


GO

