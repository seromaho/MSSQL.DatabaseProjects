-- This file contains SQL statements that will be executed after the build script.


-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Abteilungen' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Abteilungen]
FROM './Data/Data.Abteilungen.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Anreden' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Anreden]
FROM './Data/Data.Anreden.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Artikel' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Artikel]
FROM './Data/Data.Artikel.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_ArtikelGruppen' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_ArtikelGruppen]
FROM './Data/Data.ArtikelGruppen.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Bestellungen' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Bestellungen]
FROM './Data/Data.Bestellungen.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_BestellungenPositionen' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_BestellungenPositionen]
FROM './Data/Data.BestellungenPositionen.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_GruppenMerge1' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_GruppenMerge1]
FROM './Data/Data.GruppenMerge1.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_GruppenMerge2' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_GruppenMerge2]
FROM './Data/Data.GruppenMerge2.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Interessen' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Interessen]
FROM './Data/Data.Interessen.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Kunden' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Kunden]
FROM './Data/Data.Kunden.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_KundenInteressen' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_KundenInteressen]
FROM './Data/Data.KundenInteressen.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Lager' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Lager]
FROM './Data/Data.Lager.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Lagerstand' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Lagerstand]
FROM './Data/Data.Lagerstand.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Lieferanten' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Lieferanten]
FROM './Data/Data.Lieferanten.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Personal' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Personal]
FROM './Data/Data.Personal.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Setartikel' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Setartikel]
FROM './Data/Data.Setartikel.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Status' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Status]
FROM './Data/Data.Status.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Testartikel' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Testartikel]
FROM './Data/Data.Testartikel.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Testpersonal' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Testpersonal]
FROM './Data/Data.Testpersonal.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Titel' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Titel]
FROM './Data/Data.Titel.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_Wareneingang' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Wareneingang]
FROM './Data/Data.Wareneingang.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'WaWi_DB' database to run this snippet
USE [WaWi_DB]
-- Import table data into table 'TBL_WareneingangPositionen' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_WareneingangPositionen]
FROM './Data/Data.WareneingangPositionen.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO
