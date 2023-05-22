GO

/****** Object:  Table [dbo].[DIM_COUNTRY]     ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DIM_COUNTRY]') AND type in (N'U'))
DROP TABLE [dbo].[DIM_COUNTRY]
GO

/****** Object:  Table [dbo].[DIM_COUNTRY]     ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM_COUNTRY](
	[ID_PAIS] [varchar](3) NOT NULL PRIMARY KEY,
	[DESC_PAIS] [varchar](250) NULL,
	[ISO2] [varchar](250) NULL,
	[DESC_MONEDA] [varchar](250) NULL,
	[DESC_REGION] [varchar](250) NULL,
	[DESC_GRUPO] [varchar](250) NULL,
	[System of National Accounts] [varchar](250) NULL,
	[System of trade] [varchar](250) NULL
) ON [PRIMARY]
GO


GO

/****** Object:  Table [dbo].[DIM_METRICAS]     ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DIM_METRICAS]') AND type in (N'U'))
DROP TABLE [dbo].[DIM_METRICAS]
GO

/****** Object:  Table [dbo].[DIM_METRICAS]     ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM_METRICAS](
	[ID_METRICA] [varchar](25) NOT NULL,
	[DESC_METRICA] [varchar](1250) NULL
) ON [PRIMARY]
GO




/****** Object:  Table [dbo].[FACT_WWBI]     ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FACT_WWBI]') AND type in (N'U'))
DROP TABLE [dbo].[FACT_WWBI]
GO

/****** Object:  Table [dbo].[FACT_WDI]    Script Date: 19/05/2020 22:25:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FACT_WWBI](
	[ID_PAIS] [varchar](3) NULL,
	[ID_METRICA] [varchar](25) NULL,
	[ID_ANIO] INT NULL,
	[IN_VALUE] FLOAT NULL
) ON [PRIMARY]
GO



