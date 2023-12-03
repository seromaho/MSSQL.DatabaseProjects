-- This file contains SQL statements that will be executed after the build script.

-- The BULK INSERT statement only works if the MSSQL Server instance can access
-- the path specified in the statement's FROM clause. That means that this script
-- only works with a local instance of MSSQL Server.

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Abteilungen' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Abteilungen]
FROM 'DatabaseProject.WaWi\Data\Data.Abteilungen.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Anreden' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Anreden]
FROM 'DatabaseProject.WaWi\Data\Data.Anreden.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Artikel' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Artikel]
FROM 'DatabaseProject.WaWi\Data\Data.Artikel.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_ArtikelGruppen' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_ArtikelGruppen]
FROM 'DatabaseProject.WaWi\Data\Data.ArtikelGruppen.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Bestellungen' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Bestellungen]
FROM 'DatabaseProject.WaWi\Data\Data.Bestellungen.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_BestellungenPositionen' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_BestellungenPositionen]
FROM 'DatabaseProject.WaWi\Data\Data.BestellungenPositionen.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_GruppenMerge1' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_GruppenMerge1]
FROM 'DatabaseProject.WaWi\Data\Data.GruppenMerge1.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_GruppenMerge2' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_GruppenMerge2]
FROM 'DatabaseProject.WaWi\Data\Data.GruppenMerge2.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Interessen' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Interessen]
FROM 'DatabaseProject.WaWi\Data\Data.Interessen.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Kunden' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Kunden]
FROM 'DatabaseProject.WaWi\Data\Data.Kunden.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_KundenInteressen' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_KundenInteressen]
FROM 'DatabaseProject.WaWi\Data\Data.KundenInteressen.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Lager' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Lager]
FROM 'DatabaseProject.WaWi\Data\Data.Lager.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Lagerstand' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Lagerstand]
FROM 'DatabaseProject.WaWi\Data\Data.Lagerstand.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Lieferanten' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Lieferanten]
FROM 'DatabaseProject.WaWi\Data\Data.Lieferanten.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Personal' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Personal]
FROM 'DatabaseProject.WaWi\Data\Data.Personal.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Setartikel' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Setartikel]
FROM 'DatabaseProject.WaWi\Data\Data.Setartikel.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Status' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Status]
FROM 'DatabaseProject.WaWi\Data\Data.Status.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Testartikel' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Testartikel]
FROM 'DatabaseProject.WaWi\Data\Data.Testartikel.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Testpersonal' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Testpersonal]
FROM 'DatabaseProject.WaWi\Data\Data.Testpersonal.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Titel' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Titel]
FROM 'DatabaseProject.WaWi\Data\Data.Titel.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_Wareneingang' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_Wareneingang]
FROM 'DatabaseProject.WaWi\Data\Data.Wareneingang.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO

-- Connect to the 'DB_WaWi' database to run this snippet
USE [DB_WaWi]
-- Import table data into table 'TBL_WareneingangPositionen' from the specified file
-- Skip the header (first row)
-- Use a comma (,) as the field terminator
-- Use the default row terminator: the newline character (\n)
BULK INSERT [TBL_WareneingangPositionen]
FROM 'DatabaseProject.WaWi\Data\Data.WareneingangPositionen.csv'
WITH
(
	-- CODEPAGE = 'ACP',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)
GO
