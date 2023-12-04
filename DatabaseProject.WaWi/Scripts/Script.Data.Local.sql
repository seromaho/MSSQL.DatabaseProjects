-- This file contains SQL statements that will be executed after the build script.

-- The BULK INSERT statement only works if the MSSQL Server instance can access
-- the path specified in the statement's FROM clause. That means that this script
-- only works with a local instance of MSSQL Server.

PRINT N'Importing table data into table [dbo].[TBL_Abteilungen] from CSV file...';

GO

-- Import table data into table 'TBL_Abteilungen' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_ABTEILUNGEN]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Abteilungen.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_Anreden] from CSV file...';

GO

-- Import table data into table 'TBL_Anreden' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_ANREDEN]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Anreden.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_Artikel] from CSV file...';

GO

-- Import table data into table 'TBL_Artikel' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_ARTIKEL]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Artikel.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_ArtikelGruppen] from CSV file...';

GO

-- Import table data into table 'TBL_ArtikelGruppen' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_ARTIKELGRUPPEN]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.ArtikelGruppen.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_Bestellungen] from CSV file...';

GO

-- Import table data into table 'TBL_Bestellungen' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_BESTELLUNGEN]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Bestellungen.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_BestellungenPositionen] from CSV file...';

GO

-- Import table data into table 'TBL_BestellungenPositionen' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_BESTELLUNGENPOSITIONEN]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.BestellungenPositionen.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[x_GruppenMerge1] from CSV file...';

GO

-- Import table data into table 'x_GruppenMerge1' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [X_GRUPPENMERGE1]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.GruppenMerge1.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[x_GruppenMerge2] from CSV file...';

GO

-- Import table data into table 'x_GruppenMerge2' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [X_GRUPPENMERGE2]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.GruppenMerge2.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_Interessen] from CSV file...';

GO

-- Import table data into table 'TBL_Interessen' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_INTERESSEN]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Interessen.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_Kunden] from CSV file...';

GO

-- Import table data into table 'TBL_Kunden' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_KUNDEN]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Kunden.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_KundenInteressen] from CSV file...';

GO

-- Import table data into table 'TBL_KundenInteressen' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_KUNDENINTERESSEN]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.KundenInteressen.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_Lager] from CSV file...';

GO

-- Import table data into table 'TBL_Lager' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_LAGER]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Lager.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_Lagerstand] from CSV file...';

GO

-- Import table data into table 'TBL_Lagerstand' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_LAGERSTAND]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Lagerstand.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_Lieferanten] from CSV file...';

GO

-- Import table data into table 'TBL_Lieferanten' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_LIEFERANTEN]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Lieferanten.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_Personal] from CSV file...';

GO

-- Import table data into table 'TBL_Personal' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_PERSONAL]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Personal.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_Setartikel] from CSV file...';

GO

-- Import table data into table 'TBL_Setartikel' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_SETARTIKEL]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Setartikel.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_Status] from CSV file...';

GO

-- Import table data into table 'TBL_Status' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_STATUS]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Status.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_Testartikel] from CSV file...';

GO

-- Import table data into table 'TBL_Testartikel' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_TESTARTIKEL]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Testartikel.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_Testpersonal] from CSV file...';

GO

-- Import table data into table 'TBL_Testpersonal' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_TESTPERSONAL]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Testpersonal.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_Titel] from CSV file...';

GO

-- Import table data into table 'TBL_Titel' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_TITEL]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Titel.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_Wareneingang] from CSV file...';

GO

-- Import table data into table 'TBL_Wareneingang' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_WARENEINGANG]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.Wareneingang.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO

PRINT N'Importing table data into table [dbo].[TBL_WareneingangPositionen] from CSV file...';

GO

-- Import table data into table 'TBL_WareneingangPositionen' from the specified file
-- Use a CSV file in UTF-8 format (using a CODEPAGE of 65001)
-- Skip the header (first row)
-- Use hash (#) as the quote character
-- Use pipe (|) as the field terminator
-- Use CRLF (\r\n) as the row terminator
BULK INSERT [TBL_WARENEINGANGPOSITIONEN]
FROM '$(RepoParDir)\MSSQL.DatabaseProjects\DatabaseProject.WaWi\Data\Data.WareneingangPositionen.csv'

WITH (CODEPAGE = 65001, FORMAT = 'CSV', FIRSTROW = 2, FIELDQUOTE = '#', FIELDTERMINATOR = '|', ROWTERMINATOR = '0x0d0a');

GO