USE [master]
GO
/****** Object:  Database [ProgramaSDE1]    Script Date: 05/16/2013 17:32:52 ******/
CREATE DATABASE [ProgramaSDE1] ON  PRIMARY 
( NAME = N'ProgramaSDE1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ProgramaSDE1.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProgramaSDE1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ProgramaSDE1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProgramaSDE1] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProgramaSDE1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProgramaSDE1] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ProgramaSDE1] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ProgramaSDE1] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ProgramaSDE1] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ProgramaSDE1] SET ARITHABORT OFF
GO
ALTER DATABASE [ProgramaSDE1] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ProgramaSDE1] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ProgramaSDE1] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ProgramaSDE1] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ProgramaSDE1] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ProgramaSDE1] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ProgramaSDE1] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ProgramaSDE1] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ProgramaSDE1] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ProgramaSDE1] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ProgramaSDE1] SET  DISABLE_BROKER
GO
ALTER DATABASE [ProgramaSDE1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ProgramaSDE1] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ProgramaSDE1] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ProgramaSDE1] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ProgramaSDE1] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ProgramaSDE1] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ProgramaSDE1] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ProgramaSDE1] SET  READ_WRITE
GO
ALTER DATABASE [ProgramaSDE1] SET RECOVERY FULL
GO
ALTER DATABASE [ProgramaSDE1] SET  MULTI_USER
GO
ALTER DATABASE [ProgramaSDE1] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ProgramaSDE1] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProgramaSDE1', N'ON'
GO
USE [ProgramaSDE1]
GO
/****** Object:  Table [dbo].[FuenteFinanciamiento]    Script Date: 05/16/2013 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FuenteFinanciamiento](
	[idFF] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_FuenteFinanciamiento] PRIMARY KEY CLUSTERED 
(
	[idFF] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 05/16/2013 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[idDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[idDepartamento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (1, N'Chinandega')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (2, N'León ')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (3, N'Managua')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (4, N'Masaya')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (5, N'Granada')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (6, N'Carazo ')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (7, N'Rivas')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (8, N'Boaco ')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (9, N'Chontales')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (10, N'Estelí ')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (11, N'Jinotega')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (12, N'Madriz')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (13, N'Matagalpa')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (14, N'Nueva Segovia')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (15, N'Río San Juan')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (16, N'RAAN')
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (17, N'RAAS')
SET IDENTITY_INSERT [dbo].[Departamento] OFF
/****** Object:  Table [dbo].[CategoriaUsuario]    Script Date: 05/16/2013 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoriaUsuario](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](12) NOT NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_CategoriaUsuario] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CategoriaUsuario] ON
INSERT [dbo].[CategoriaUsuario] ([IdCategoria], [Nombre], [Descripcion]) VALUES (1, N'Director', N'')
INSERT [dbo].[CategoriaUsuario] ([IdCategoria], [Nombre], [Descripcion]) VALUES (2, N'Oficial', N'')
INSERT [dbo].[CategoriaUsuario] ([IdCategoria], [Nombre], [Descripcion]) VALUES (3, N'Regional', N'')
INSERT [dbo].[CategoriaUsuario] ([IdCategoria], [Nombre], [Descripcion]) VALUES (4, N'Facilitador', NULL)
INSERT [dbo].[CategoriaUsuario] ([IdCategoria], [Nombre], [Descripcion]) VALUES (5, N'Clientes', NULL)
SET IDENTITY_INSERT [dbo].[CategoriaUsuario] OFF
/****** Object:  Table [dbo].[Coordenadas]    Script Date: 05/16/2013 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Coordenadas](
	[IdCoordenada] [int] IDENTITY(1,1) NOT NULL,
	[Coordenada_X_UTM] [varchar](20) NULL,
	[Coordenada_Y_UTM] [varchar](20) NULL,
	[Coordenada_Y_GMS] [varchar](20) NULL,
	[Coordenada_X_GMS] [varchar](20) NULL,
 CONSTRAINT [PK_Coordenadas] PRIMARY KEY CLUSTERED 
(
	[IdCoordenada] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Coordenadas] ON
INSERT [dbo].[Coordenadas] ([IdCoordenada], [Coordenada_X_UTM], [Coordenada_Y_UTM], [Coordenada_Y_GMS], [Coordenada_X_GMS]) VALUES (3, N'sdsd', N'sdsdsd', N'sdsds', N'asas')
SET IDENTITY_INSERT [dbo].[Coordenadas] OFF
/****** Object:  Table [dbo].[Indicador]    Script Date: 05/16/2013 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Indicador](
	[IdIndicador] [int] IDENTITY(1,1) NOT NULL,
	[NombreIndicador] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Indicador] PRIMARY KEY CLUSTERED 
(
	[IdIndicador] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductoFinanciero]    Script Date: 05/16/2013 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductoFinanciero](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_ProductoFinanciero] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoEvento]    Script Date: 05/16/2013 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoEvento](
	[IdTipoEvento] [int] IDENTITY(1,1) NOT NULL,
	[Evento] [varchar](20) NOT NULL,
 CONSTRAINT [PK_TipoEvento] PRIMARY KEY CLUSTERED 
(
	[IdTipoEvento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SectorProductivo]    Script Date: 05/16/2013 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SectorProductivo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_SectorProductivo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SectorProductivoUpdate]    Script Date: 05/16/2013 17:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SectorProductivoUpdate](@Id int, @Nombre varchar(50))
AS
BEGIN 
 
		update dbo.SectorProductivo set  Nombre = @Nombre  where Id = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[SectorProductivoInsert]    Script Date: 05/16/2013 17:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SectorProductivoInsert](@Nombre varchar(50))
AS
BEGIN 
 
		insert into dbo.SectorProductivo values(@Nombre)
END
GO
/****** Object:  StoredProcedure [dbo].[SectorProductivoDelete]    Script Date: 05/16/2013 17:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SectorProductivoDelete](@Id int)
AS
BEGIN 
		delete dbo.SectorProductivo where Id = @Id 
END
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 05/16/2013 17:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[CodCategoriaUsuario] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Apellido] [varchar](30) NOT NULL,
	[Telefono] [varchar](20) NULL,
	[Direccion] [varchar](100) NULL,
	[Celular] [varchar](30) NULL,
	[Cedula] [varchar](16) NULL,
	[Responsable] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (2, 4, N'Abel ', N'Muñoz', N'', N'', N'', N'', NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (7, 4, N'Enyell Otniel', N'Miranda Martínez', N'', N'', N'', N'', NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (8, 4, N'Andrea René ', N'Poveda Reyes', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (9, 4, N'Yesenia María ', N'Sevilla Baldizón', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (10, 4, N'Claudio José ', N'Ticay Zeledón ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (11, 4, N'Daysi Antonieta', N'Picado Chavarría', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (12, 4, N'Jorge Alesio ', N'Castro Sarria', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (13, 4, N'Silvio Abrahan ', N'González', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (14, 3, N'Benjamin Aaron ', N'Pilarte', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (15, 4, N'Crisanto Josué ', N'Llanes Altamirano', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (16, 4, N'Carmen María', N'Reyes Morales', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (17, 3, N'Edmar ', N'Umanzor Acevedo ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (18, 4, N'Ernesto Javier', N'Herrera Pineda', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (19, 2, N'Eva Margarita ', N'Sánchez Aragón ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (20, 3, N'Visitación ', N'Sevilla Bellorín ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (21, 4, N'Roberto Antonio', N'Gutiérrez Leyton ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (22, 4, N'Walter ', N'Dormuz Trwin ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (23, 4, N'Carlos Alberto ', N'Raudez Cruz', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (24, 2, N'Elías René ', N'Ramírez Roustan ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (25, 2, N'Carlos José ', N'Guerrero López', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (26, 2, N'Manuel Antonio', N'Jarquín ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (27, 4, N'Joel Amed ', N'Martínez Marín ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (28, 4, N'Abemelec Yakarely ', N'García Rodríguez', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (29, 4, N'Armando José ', N'Gadea Velásquez', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (30, 3, N'Luis Gilberto ', N'García Serrano ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (31, 4, N'Naer David', N'Meza Centeno ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (32, 4, N'José Luis ', N'Herrera Espinoza', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (34, 4, N'Bismark Antonio', N'Reyes Rodríguez', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (35, 4, N'Cesar Francisco ', N'Sampson Munguía', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (36, 4, N'Francisco Santiago ', N'Torres Pereira', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (37, 3, N'Rolando Alfredo ', N'Altamirano Escalante', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (38, 4, N'Yuxnier ', N'Vílchez Castellón ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (39, 3, N'Mario Antonio', N'Nayra Hernández', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (40, 4, N'Bayron José ', N'Ramires Balladares', NULL, NULL, NULL, NULL, 7)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (41, 4, N'Yasser Martin ', N'Bolaños Alvarado ', NULL, NULL, NULL, NULL, 8)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (42, 4, N'Ildebrando ', N'Quintero Rivera ', NULL, NULL, NULL, NULL, 9)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (43, 4, N'Rubenía del Carmen', N'Zelaya Castro ', NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (48, 1, N'asdf', N'asdf', N'87018155', N'Managua', N'22791163', N'001-', 2)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (49, 1, N'qwerty', N'qwertyuiop', N'', N'', N'', N'', 10)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (52, 1, N'asdf', N'trew', N'22791163', N'Managua', N'87018155', N'001-200295', 2)
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (56, 1, N'Rene', N'Cortez', N'22791163', N'Managua', N'87018155', N'001-200295-0052P', 2)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  StoredProcedure [dbo].[updateindicador]    Script Date: 05/16/2013 17:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateindicador](@Id int, @NombreIndicador varchar(30))
AS
BEGIN 
 
		update dbo.Indicador set  NombreIndicador = @NombreIndicador  where IdIndicador = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[updatefuentefinanciamiento]    Script Date: 05/16/2013 17:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updatefuentefinanciamiento](@Id int, @Nombre varchar(50))
AS
BEGIN 
 
		update dbo.FuenteFinanciamiento set  Nombre = @Nombre  where idFF = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[updateDepartamento]    Script Date: 05/16/2013 17:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateDepartamento](@Id int, @Nombre varchar(30))
AS
BEGIN 
 
		update dbo.Departamento set  Nombre = @Nombre  where idDepartamento=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[updatecategoriausuario]    Script Date: 05/16/2013 17:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updatecategoriausuario](@Id int, @Nombre varchar(12),@Descripcion varchar(100))
AS
BEGIN 
 
		update dbo.CategoriaUsuario set  Nombre = @Nombre , Descripcion = @Descripcion where IdCategoria = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[TipoEventoUpdate]    Script Date: 05/16/2013 17:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TipoEventoUpdate](@Id int, @Evento varchar(20))
AS
BEGIN 
 
		update dbo.TipoEvento set  Evento = @Evento  where IdTipoEvento = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[TipoEventoInsert]    Script Date: 05/16/2013 17:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TipoEventoInsert](@Evento varchar(20))
AS
BEGIN 
 
		insert into dbo.TipoEvento values(@Evento)
END
GO
/****** Object:  StoredProcedure [dbo].[TipoEventoDelete]    Script Date: 05/16/2013 17:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TipoEventoDelete](@Id int)
AS
BEGIN 
		delete dbo.TipoEvento where IdTipoEvento = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[ProductoFinancieroUpdate]    Script Date: 05/16/2013 17:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProductoFinancieroUpdate](@Id int, @Nombre varchar(30))
AS
BEGIN 
 
		update dbo.ProductoFinanciero set  Nombre = @Nombre where IdProducto = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[ProductoFinancieroInsert]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProductoFinancieroInsert](@Nombre varchar(30))
AS
BEGIN 
 
		insert into dbo.ProductoFinanciero values(@Nombre)
END
GO
/****** Object:  StoredProcedure [dbo].[ProductoFinancieroDelete]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProductoFinancieroDelete](@Id int)
AS
BEGIN 
		delete dbo.ProductoFinanciero where IdProducto = @Id 
END
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Municipio](
	[idMunicipio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[idDepartamento] [int] NOT NULL,
 CONSTRAINT [PK_Municipio] PRIMARY KEY CLUSTERED 
(
	[idMunicipio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Municipio] ON
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (1, N'Chinandega', 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (3, N'Chichigalpa', 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (4, N'Cinco Pinos', 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (5, N'Corinto ', 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (6, N'El Realejo', 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (7, N'El Viejo', 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (8, N'Posoltega', 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (9, N'Puerto Morazán ', 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (10, N'San Francisco del Norte', 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (11, N'Santo Tomás del Norte', 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (12, N'Somotillo ', 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (13, N'Villa Nueva', 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (14, N'León ', 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (15, N'Achuapa', 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (16, N'El Jicaral', 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (17, N'El Sauce', 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (18, N'La Paz Centro ', 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (19, N'Larreynaga', 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (20, N'Nagarote', 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (21, N'Quezalguaque', 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (22, N'Santa Rosa del Peñón ', 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (23, N'Telica', 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (24, N'Managua', 3)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (25, N'Ciudad Sandino', 3)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (26, N'El Crucero ', 3)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (27, N'Mateare', 3)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (28, N'San Francisco Libre ', 3)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (29, N'San Rafael del Sur', 3)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (30, N'Ticuantepe', 3)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (31, N'Tipitapa', 3)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (32, N'Villa Carlos Fonseca', 3)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (33, N'Masaya', 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (34, N'Catarina', 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (35, N'La Concepción', 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (36, N'Masatepe', 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (37, N'Nandasmo', 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (38, N'Nindirí', 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (39, N'Niquinohomo', 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (40, N'San Juan de Oriente', 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (41, N'Tisma', 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (42, N'Granada', 5)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (43, N'Diriá', 5)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (44, N'Diriomo', 5)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (45, N'Nandaime', 5)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (46, N'Jinotepe', 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (47, N'Diriamba', 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (48, N'Dolores', 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (49, N'El Rosario', 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (50, N'La Conquista', 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (51, N'La Paz de Carazo ', 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (52, N'San Marcos', 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (53, N'Santa Teresa', 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (54, N'Rivas', 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (55, N'Altagracia', 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (56, N'Belén', 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (57, N'Buenos Aires', 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (58, N'Cárdenas', 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (59, N'Moyogalpa', 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (60, N'Potosí', 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (61, N'San Jorge', 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (62, N'San Juan del Sur', 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (63, N'Tola', 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (64, N'Boaco ', 8)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (65, N'Camoapa', 8)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (66, N'San José de los Remates', 8)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (67, N'San Lorenzo', 8)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (68, N'Santa Lucía', 8)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (69, N'Teustepe', 8)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (70, N'Juigalpa', 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (71, N'Acoyapa', 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (72, N'Comalapa', 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (73, N'La Libertad', 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (74, N'San Pedro de Lóvago ', 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (75, N'Santo Domingo ', 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (76, N'Santo Tomás ', 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (77, N'Villa Sandino', 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (78, N'El Coral ', 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (79, N'San Francisco de Cuapa', 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (80, N'Estelí ', 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (81, N'Condega ', 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (82, N'La Trinidad', 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (83, N'Pueblo Nuevo ', 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (84, N'San Juan de Limay', 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (85, N'San Nicolás ', 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (86, N'Jinotega', 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (87, N'El Cuá ', 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (88, N'La Concordia', 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (89, N'San José de Bocay', 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (90, N'San Rafael del Norte', 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (91, N'San Sebastián de Yalí ', 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (92, N'Santa María de Pantasma', 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (93, N'Wiwilí de Jinotega', 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (94, N'Somoto', 12)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (95, N'Las Sabanas', 12)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (96, N'Palacagüina', 12)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (97, N'San José de Cusmapa', 12)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (98, N'San Juan del Río Coco', 12)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (99, N'San Lucas ', 12)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (100, N'Telpaneca', 12)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (101, N'Totogalpa', 12)
GO
print 'Processed 100 total records'
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (102, N'Yalagüina', 12)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (103, N'Matagalpa', 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (104, N'Ciudad Darío', 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (105, N'Esquipulas', 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (106, N'Matiguás', 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (107, N'Muy Muy', 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (108, N'Rancho Grande', 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (109, N'Río Blanco', 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (110, N'San Dionisio', 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (111, N'San Isidro', 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (112, N'San Ramón', 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (113, N'Sébaco', 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (114, N'Terrabona', 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (115, N'Tuma-La Dalia', 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (116, N'Ocotal', 14)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (117, N'Ciudad Antigua', 14)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (118, N'Dipilto', 14)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (119, N'El Jícaro', 14)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (120, N'Jalapa', 14)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (122, N'Macuelizo', 14)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (123, N'Mosonte', 14)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (124, N'Murra', 14)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (125, N'Quilalí', 14)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (126, N'San Fernando', 14)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (127, N'Wiwilí de Nueva Segovia', 14)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (128, N'Santa María', 14)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (129, N'San Carlos', 15)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (130, N'El Almendro', 15)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (131, N'El Castillo', 15)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (132, N'Morrito', 15)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (133, N'San Juan de Nicaragua', 15)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (134, N'San Miguelito', 15)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (135, N'Puerto Cabezas', 16)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (136, N'Bonanzas', 16)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (137, N'Prinzapolka', 16)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (138, N'Rosita', 16)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (139, N'Siuna', 16)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (140, N'Waslala', 16)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (141, N'Waspán', 16)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (142, N'Bilwi', 16)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (143, N'Bluefields', 17)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (144, N'Corn Island', 17)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (145, N'Desembocad. del Río Grande', 17)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (146, N'El Rama', 17)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (147, N'El Tortuguero', 17)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (148, N'Kukra Hill', 17)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (149, N'La Cruz de Río Grande', 17)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (150, N'Laguna de Perlas', 17)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (151, N'Muelle de los Bueyes', 17)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (153, N'Nueva Guinea', 17)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (154, N'El Ayote', 17)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (155, N'Isla de Ometepe', 7)
SET IDENTITY_INSERT [dbo].[Municipio] OFF
/****** Object:  StoredProcedure [dbo].[insertindicador]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertindicador](@NombreIndicador varchar(30))
AS
BEGIN 
 
		insert into dbo.Indicador values(@NombreIndicador)
END
GO
/****** Object:  StoredProcedure [dbo].[insertfuentefinanciamiento]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertfuentefinanciamiento](@Nombre varchar(50))
AS
BEGIN 
 
		insert into dbo.FuenteFinanciamiento values(@Nombre)
END
GO
/****** Object:  StoredProcedure [dbo].[insertDepartamento]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertDepartamento](@Nombre varchar(30))
AS
BEGIN 
 
		insert into dbo.Departamento values(@Nombre)
END
GO
/****** Object:  StoredProcedure [dbo].[insertcategoriausuario]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertcategoriausuario](@Nombre varchar(12),@Descripcion varchar(100))
AS
BEGIN 
 
		insert into dbo.CategoriaUsuario values(@Nombre,@Descripcion)
END
GO
/****** Object:  Table [dbo].[Convenio]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Convenio](
	[IdC] [int] IDENTITY(1,1) NOT NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFinal] [datetime] NULL,
	[TotalClientes] [int] NULL,
	[MontoFF] [float] NULL,
	[MontoP] [float] NULL,
	[CodFuenteFinanciamiento] [int] NULL,
 CONSTRAINT [PK_Convenio] PRIMARY KEY CLUSTERED 
(
	[IdC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Convenio] ON
INSERT [dbo].[Convenio] ([IdC], [FechaInicio], [FechaFinal], [TotalClientes], [MontoFF], [MontoP], [CodFuenteFinanciamiento]) VALUES (1, CAST(0x00009FF500000000 AS DateTime), CAST(0x0000A16300000000 AS DateTime), 3, 123.32, 23, NULL)
INSERT [dbo].[Convenio] ([IdC], [FechaInicio], [FechaFinal], [TotalClientes], [MontoFF], [MontoP], [CodFuenteFinanciamiento]) VALUES (2, CAST(0x0000A11E00000000 AS DateTime), CAST(0x0000A28B00000000 AS DateTime), 1, 5689.6, 569, NULL)
SET IDENTITY_INSERT [dbo].[Convenio] OFF
/****** Object:  StoredProcedure [dbo].[CoordenadaInsert]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>IdC
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CoordenadaInsert](@Coordenada_X_UTM varchar(20),@Coordenada_Y_UTM varchar(20),
 @Coordenada_Y_GMS varchar(20),@Coordenada_X_GMS varchar(20))
AS
BEGIN 
 
		insert into dbo.Coordenadas values(@Coordenada_X_UTM,@Coordenada_Y_UTM,@Coordenada_Y_GMS,@Coordenada_X_GMS)
END
GO
/****** Object:  StoredProcedure [dbo].[deleteindicador]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteindicador](@Id int)
AS
BEGIN 
		delete dbo.Indicador where IdIndicador = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[deletefuentefinanciamiento]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deletefuentefinanciamiento](@Id int)
AS
BEGIN 
		delete dbo.FuenteFinanciamiento where idFF = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[deleteDepartamento]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteDepartamento](@Id int)
AS
BEGIN 
		delete dbo.Departamento where idDepartamento = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[deletecategoriausuario]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deletecategoriausuario](@Id int)
AS
BEGIN 
		delete dbo.CategoriaUsuario where IdCategoria = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[CoordenaUpdate]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CoordenaUpdate](@IdCoordenada int,@Coordenada_X_UTM varchar(20),@Coordenada_Y_UTM varchar(20),
 @Coordenada_Y_GMS varchar(20),@Coordenada_X_GMS varchar(20))
AS
BEGIN 
 
		update dbo.Coordenadas set  Coordenada_X_UTM = @Coordenada_X_UTM , Coordenada_Y_UTM=@Coordenada_Y_UTM,
		 Coordenada_Y_GMS=@Coordenada_Y_GMS, Coordenada_X_GMS=@Coordenada_X_GMS where IdCoordenada = @IdCoordenada 
END
GO
/****** Object:  StoredProcedure [dbo].[CoordenadasDelete]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CoordenadasDelete](@Id int)
AS
BEGIN 
		delete dbo.Coordenadas where IdCoordenada = @Id 
END
GO
/****** Object:  Table [dbo].[Eventos]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Eventos](
	[IdEvento] [int] IDENTITY(1,1) NOT NULL,
	[CodTipoEvento] [int] NOT NULL,
	[TituloEvento] [varchar](20) NULL,
 CONSTRAINT [PK_Eventos] PRIMARY KEY CLUSTERED 
(
	[IdEvento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetalleConvenio]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleConvenio](
	[IdDC] [int] IDENTITY(1,1) NOT NULL,
	[CodConvenio] [int] NOT NULL,
	[CodProducto] [int] NOT NULL,
	[NumeroClientes] [int] NULL,
	[InversionCliente] [float] NULL,
 CONSTRAINT [PK_DetalleConvenio_1] PRIMARY KEY CLUSTERED 
(
	[IdDC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[EventoInsert]    Script Date: 05/16/2013 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EventoInsert](@CodTipoEvento int, @TituloEvento varchar(20))
AS
BEGIN 
 
		insert into dbo.Eventos values(@CodTipoEvento,@TituloEvento)
END
GO
/****** Object:  StoredProcedure [dbo].[EventoDelete]    Script Date: 05/16/2013 17:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EventoDelete](@Id int)
AS
BEGIN 
		delete dbo.Eventos where IdEvento = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[ConvenioUpdate]    Script Date: 05/16/2013 17:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ConvenioUpdate](@IdC int,@FechaInicio datetime,@FechaFinal datetime,@TotalClientes int,@MontoFF float,@MontoP float)
AS
BEGIN 
 
		update  dbo.Convenio set  FechaInicio = @FechaInicio , FechaFinal = @FechaFinal, TotalClientes=@TotalClientes
		,MontoFF=@MontoFF,MontoP=@MontoP where IdC = @IdC 
END
GO
/****** Object:  StoredProcedure [dbo].[ConvenioInsert]    Script Date: 05/16/2013 17:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>IdC
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ConvenioInsert](@FechaInicio datetime,@FechaFinal datetime,@TotalClientes int,@MontoFF float,@MontoP float)
AS
BEGIN 
 
		insert into dbo.Convenio values(@FechaInicio,@FechaFinal,@TotalClientes,@MontoFF,@MontoP)
END
GO
/****** Object:  StoredProcedure [dbo].[ConvenioDelete]    Script Date: 05/16/2013 17:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ConvenioDelete](@Id int)
AS
BEGIN 
		delete  dbo.Convenio where IdC = @Id 
END
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 05/16/2013 17:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](60) NOT NULL,
	[Apellido] [varchar](60) NOT NULL,
	[Sexo] [bit] NULL,
	[Cedula] [varchar](16) NULL,
	[Edad] [int] NULL,
	[Telefono] [varchar](25) NULL,
	[Direccion] [varchar](100) NULL,
	[Comarca] [varchar](40) NULL,
	[CodWeb] [varchar](10) NULL,
	[CodMunicipio] [int] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Sexo], [Cedula], [Edad], [Telefono], [Direccion], [Comarca], [CodWeb], [CodMunicipio]) VALUES (2, N'Byron', N'Arias', 1, N'001-659832', 20, N'22791163', N'Masaya', N'La Concepción', N'00156P', 3)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Sexo], [Cedula], [Edad], [Telefono], [Direccion], [Comarca], [CodWeb], [CodMunicipio]) VALUES (9, N'René', N'Cortez', 1, N'001-200295-005P', 18, N'22791163', N'Tierra Prometida', N'Managua', N'001', 3)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Sexo], [Cedula], [Edad], [Telefono], [Direccion], [Comarca], [CodWeb], [CodMunicipio]) VALUES (10, N'Hector', N'Cortez', 1, N'', 20, N'', N'', N'', N'jkl', 1)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Sexo], [Cedula], [Edad], [Telefono], [Direccion], [Comarca], [CodWeb], [CodMunicipio]) VALUES (11, N'Rene', N'Cortez', 1, N'001-200295', 20, N'', N'', N'', N'as', 6)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
/****** Object:  StoredProcedure [dbo].[MunicipioUpdate]    Script Date: 05/16/2013 17:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MunicipioUpdate](@Id int, @Nombre varchar(30), @idDepartamento int)
AS
BEGIN 
 
		update dbo.Municipio set  Nombre = @Nombre, idDepartamento=@idDepartamento where idMunicipio=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[MunicipioInsert]    Script Date: 05/16/2013 17:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MunicipioInsert](@Nombre varchar(30), @idDepartamento int)
AS
BEGIN 
 
		insert into dbo.Municipio values(@Nombre, @idDepartamento)
END
GO
/****** Object:  StoredProcedure [dbo].[MunicipioDelete]    Script Date: 05/16/2013 17:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MunicipioDelete](@IdMunicipio int)
AS
BEGIN 
		delete dbo.Municipio where idMunicipio = @IdMunicipio 
END
GO
/****** Object:  Table [dbo].[Historial]    Script Date: 05/16/2013 17:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historial](
	[Id] [int] NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Historial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[UuarioInsert]    Script Date: 05/16/2013 17:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UuarioInsert](@CodCategoriaUsuario int, @Nombre varchar(30),@Apellido varchar(30),
@Telefono varchar(20),@Direccion varchar(100),@Celular varchar(30),@Cedula varchar(16),@Responsable int)
AS
BEGIN 
 
		insert into dbo.Usuario values(@CodCategoriaUsuario,@Nombre,@Apellido,@Telefono,@Direccion,@Celular,@Cedula,@Responsable)
END
GO
/****** Object:  StoredProcedure [dbo].[UsuarioUpdate]    Script Date: 05/16/2013 17:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UsuarioUpdate](@IdUsuario int, @CodCategoriaUsuario int, @Nombre varchar(30),@Apellido varchar(30),
@Telefono varchar(20),@Direccion varchar(100),@Celular varchar(30),@Cedula varchar(16),@Responsable int)
AS
BEGIN 
 
		update dbo.Usuario set  CodCategoriaUsuario = @CodCategoriaUsuario, Nombre=@Nombre,Apellido=@Apellido,
		Telefono=@Telefono,Direccion=@Direccion, Celular=@Celular, Cedula=@Cedula, Responsable=@Responsable 
		 where IdUsuario = @IdUsuario 
END
GO
/****** Object:  StoredProcedure [dbo].[UsuarioDelete]    Script Date: 05/16/2013 17:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UsuarioDelete](@Id int)
AS
BEGIN 
		delete dbo.Usuario where IdUsuario = @Id 
END
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 05/16/2013 17:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[IdSucursal] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[responsable] [varchar](50) NULL,
	[idMunicipio] [int] NULL,
	[telefono] [varchar](20) NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[IdSucursal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sucursal] ON
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (1, N'Ciudad Jardin ', N'Carmen María Reyes Morales', 24, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (2, N'Oriental ', N'Carmen María Reyes Morales', 24, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (3, N'Huembes', NULL, 24, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (4, N'Zumen', N'Roberto Antonio Gutiérrez Leyton ', 24, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (5, N'Ticuantepe', NULL, 24, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (6, N'Mayoreo ', NULL, 24, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (7, N'Iván Montenegro ', NULL, 24, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (8, N'Masatepe', NULL, 36, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (9, N'Jinotepe', NULL, 46, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (10, N'Nandaime', NULL, 45, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (11, N'Masaya', NULL, 33, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (12, N'Granada', NULL, 42, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (13, N'Tipitapa', NULL, 31, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (14, N'Rivas', NULL, 54, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (15, N'San Juan del Sur', NULL, 62, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (16, N'Isla de Ometepe', NULL, 155, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (17, N'Pueblo Nuevo', NULL, 83, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (18, N'Chinandega', NULL, 1, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (19, N'León', NULL, 14, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (20, N'San Juan del Río Coco', NULL, 98, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (21, N'Santa María de Pantasma', NULL, 92, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (22, N'Wiwilí', NULL, NULL, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (23, N'Estelí', NULL, 80, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (24, N'El Cuá', NULL, 87, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (25, N'San José de Bocay', NULL, 89, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (26, N'La Dalia', NULL, 115, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (27, N'Waslala', NULL, 140, NULL)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [responsable], [idMunicipio], [telefono]) VALUES (28, N'Muy Muy', NULL, 107, NULL)
SET IDENTITY_INSERT [dbo].[Sucursal] OFF
/****** Object:  View [dbo].[VistaUsuarioLista]    Script Date: 05/16/2013 17:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaUsuarioLista]
AS
SELECT     dbo.Usuario.IdUsuario, dbo.Usuario.Nombre, dbo.Usuario.Apellido, dbo.Usuario.Telefono, dbo.Usuario.Direccion, dbo.Usuario.Celular, dbo.Usuario.Cedula, 
                      dbo.CategoriaUsuario.Nombre AS Categoria, Usuario_1.Nombre AS Responsable
FROM         dbo.Usuario INNER JOIN
                      dbo.CategoriaUsuario ON dbo.Usuario.CodCategoriaUsuario = dbo.CategoriaUsuario.IdCategoria LEFT OUTER JOIN
                      dbo.Usuario AS Usuario_1 ON dbo.Usuario.Responsable = Usuario_1.IdUsuario
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[53] 4[10] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Usuario"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 206
               Right = 227
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CategoriaUsuario"
            Begin Extent = 
               Top = 9
               Left = 315
               Bottom = 146
               Right = 504
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Usuario_1"
            Begin Extent = 
               Top = 189
               Left = 321
               Bottom = 334
               Right = 519
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaUsuarioLista'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaUsuarioLista'
GO
/****** Object:  View [dbo].[VistaMunicipioLista]    Script Date: 05/16/2013 17:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaMunicipioLista]
AS
SELECT     idMunicipio, Nombre
FROM         dbo.Municipio
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Municipio"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaMunicipioLista'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaMunicipioLista'
GO
/****** Object:  StoredProcedure [dbo].[EventoUpdate]    Script Date: 05/16/2013 17:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EventoUpdate](@Id int,@CodTipoEvento int,@TituloEvento varchar(20))
AS
BEGIN 
 
		update dbo.Eventos set CodTipoEvento = @CodTipoEvento , TituloEvento = @TituloEvento where IdEvento = @Id 
END
GO
/****** Object:  View [dbo].[VistaClienteLista]    Script Date: 05/16/2013 17:33:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaClienteLista]
AS
SELECT        dbo.Cliente.IdCliente, dbo.Cliente.Nombre, dbo.Cliente.Apellido, dbo.Cliente.Cedula AS Cédula, dbo.Cliente.Edad, dbo.Cliente.Telefono AS Teléfono, 
                         dbo.Cliente.Direccion AS Dirección, dbo.Cliente.Comarca, dbo.Municipio.Nombre AS Municipio, dbo.Cliente.CodWeb AS [Código Web], 
                         CASE Sexo WHEN '1' THEN 'Masculino' WHEN '0' THEN 'Femenino' END AS Género
FROM            dbo.Cliente INNER JOIN
                         dbo.Municipio ON dbo.Cliente.CodMunicipio = dbo.Municipio.idMunicipio
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[27] 4[34] 2[34] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Cliente"
            Begin Extent = 
               Top = 0
               Left = 40
               Bottom = 224
               Right = 238
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "Municipio"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 136
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaClienteLista'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaClienteLista'
GO
/****** Object:  StoredProcedure [dbo].[SucursalUpdate]    Script Date: 05/16/2013 17:33:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SucursalUpdate](@Id int, @Nombre varchar(50),@responsable varchar(100),@idMunicipio int, @telefono varchar(20))
AS
BEGIN 
 
		update dbo.Sucursal set  Nombre = @Nombre , responsable = @responsable, idMunicipio = @idMunicipio, telefono = @telefono where IdSucursal = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[SucursalInsert]    Script Date: 05/16/2013 17:33:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SucursalInsert](@Nombre varchar(50),@responsable varchar(50),@idMunicipio int,@telefono  varchar(20))
AS
BEGIN 
 
		insert into dbo.Sucursal values(@Nombre,@responsable,@idMunicipio,@telefono)
END
GO
/****** Object:  StoredProcedure [dbo].[SucursalDelete]    Script Date: 05/16/2013 17:33:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SucursalDelete](@Id int)
AS
BEGIN 
		delete dbo.Sucursal where IdSucursal = @Id 
END
GO
/****** Object:  Table [dbo].[Contrato]    Script Date: 05/16/2013 17:33:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contrato](
	[IdContrato] [int] IDENTITY(1,1) NOT NULL,
	[CodContrato] [int] NOT NULL,
	[CodCliente] [int] NOT NULL,
	[CodUsuario] [int] NOT NULL,
	[CodSucursal] [int] NOT NULL,
	[CodConvenio] [int] NULL,
	[CodSectorProductivo] [int] NULL,
	[CodProductoFinanciero] [int] NULL,
	[MontoOtorgado] [float] NULL,
	[FechaDesembolso] [date] NULL,
 CONSTRAINT [PK_Contrato] PRIMARY KEY CLUSTERED 
(
	[IdContrato] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contrato] ON
INSERT [dbo].[Contrato] ([IdContrato], [CodContrato], [CodCliente], [CodUsuario], [CodSucursal], [CodConvenio], [CodSectorProductivo], [CodProductoFinanciero], [MontoOtorgado], [FechaDesembolso]) VALUES (1, 12345, 2, 2, 1, 1, NULL, NULL, NULL, CAST(0xE3330B00 AS Date))
INSERT [dbo].[Contrato] ([IdContrato], [CodContrato], [CodCliente], [CodUsuario], [CodSucursal], [CodConvenio], [CodSectorProductivo], [CodProductoFinanciero], [MontoOtorgado], [FechaDesembolso]) VALUES (5, 12346, 9, 9, 3, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Contrato] OFF
/****** Object:  StoredProcedure [dbo].[ClienteUpdate]    Script Date: 05/16/2013 17:33:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ClienteUpdate](@IdCliente int,@Nombre varchar(60),@Apellido varchar(60),@Sexo bit,@Cedula varchar(16),
@Edad int,@Telefono varchar(25),@Direccion varchar(100),@Comarca varchar(40),@CodWeb varchar(10),@CodMunicipio int)
AS
BEGIN 
 
		update dbo.Cliente set  Nombre = @Nombre , Apellido = @Apellido, Sexo=@Sexo
		,Cedula=@Cedula,Edad=@Edad,Telefono=@Telefono,Direccion=@Direccion
		,Comarca=@Comarca,CodWeb=@CodWeb,CodMunicipio=@CodMunicipio where IdCliente = @IdCliente 
END
GO
/****** Object:  StoredProcedure [dbo].[ClienteInsert]    Script Date: 05/16/2013 17:33:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>IdC
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ClienteInsert](@Nombre varchar(60),@Apellido varchar(60),@Sexo bit,@Cedula varchar(16),
@Edad int,@Telefono varchar(25),@Direccion varchar(100),@Comarca varchar(40),@CodWeb varchar(10),@CodMunicipio int)
AS
BEGIN 
  
  insert into dbo.Cliente values(@Nombre,@Apellido,@Sexo,@Cedula,@Edad,@Telefono,@Direccion,@Comarca,@CodWeb,@CodMunicipio)
END
GO
/****** Object:  StoredProcedure [dbo].[ClienteDelete]    Script Date: 05/16/2013 17:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ClienteDelete](@Id int)
AS
BEGIN 
		delete dbo.Cliente  where IdCliente = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[DetalleConvenioUpdate]    Script Date: 05/16/2013 17:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DetalleConvenioUpdate](@IdDC int, @CodConvenio int,@CodFuentF int,@CodProducto int,
@NumeroClientes int,@InversionCliente float)
AS
BEGIN 
 
		update dbo.DetalleConvenio set  CodConvenio = @CodConvenio , CodFuentF = @CodFuentF,CodProducto=@CodProducto,
		 NumeroClientes=@NumeroClientes,InversionCliente=@InversionCliente  where IdDC = @IdDC 
END
GO
/****** Object:  StoredProcedure [dbo].[DetalleConvenioInsert]    Script Date: 05/16/2013 17:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>IdC
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DetalleConvenioInsert](@CodConvenio int,@CodFuentF int,@CodProducto int,@NumeroClientes int,@InversionCliente float)
AS
BEGIN 
 
		insert into dbo.DetalleConvenio values(@CodConvenio,@CodFuentF,@CodProducto,@NumeroClientes,@InversionCliente)
END
GO
/****** Object:  StoredProcedure [dbo].[DetalleConvenioDelete]    Script Date: 05/16/2013 17:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DetalleConvenioDelete](@Id int)
AS
BEGIN 
		delete  dbo.DetalleConvenio where IdDC = @Id 
END
GO
/****** Object:  Table [dbo].[Finca]    Script Date: 05/16/2013 17:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Finca](
	[IdFinca] [int] IDENTITY(1,1) NOT NULL,
	[HaTotalFinca] [float] NOT NULL,
	[HaEfectiva] [float] NOT NULL,
	[UsoActualSuelo] [float] NOT NULL,
	[CodCliente] [int] NOT NULL,
	[CodCoordenada] [int] NOT NULL,
	[Coordenada_X_UTM] [varchar](50) NULL,
	[Coordenada_Y_UTM] [varchar](50) NULL,
	[Coordenada_Y_GMS] [varchar](50) NULL,
	[Coordenada_X_GMS] [varchar](50) NULL,
 CONSTRAINT [PK_Finca] PRIMARY KEY CLUSTERED 
(
	[IdFinca] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[FincaUpdate]    Script Date: 05/16/2013 17:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FincaUpdate](@IdFinca int,@HaTotalFinca float,@HaEfectiva float,@UsoActualSuelo float,@CodCliente int,@CodCoordenada int)
AS
BEGIN 
 
		update  dbo.Finca set HaTotalFinca = @HaTotalFinca , HaEfectiva = @HaEfectiva, UsoActualSuelo=@UsoActualSuelo,
		CodCliente=@CodCliente,CodCoordenada=@CodCoordenada WHERE IdFinca=@IdFinca
END
GO
/****** Object:  StoredProcedure [dbo].[FincaInsert]    Script Date: 05/16/2013 17:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>IdC
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FincaInsert](@HaTotalFinca float,@HaEfectiva float,@UsoActualSuelo float,@CodCliente int,@CodCoordenada int)
AS
BEGIN 
 
		insert into dbo.Finca values(@HaTotalFinca,@HaEfectiva,@UsoActualSuelo,@CodCliente,@CodCoordenada)
END
GO
/****** Object:  StoredProcedure [dbo].[FincaDelete]    Script Date: 05/16/2013 17:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FincaDelete](@Id int)
AS
BEGIN 
		delete  dbo.Finca where IdFinca=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[ContratoUpdate]    Script Date: 05/16/2013 17:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ContratoUpdate](@IdContrato int,@CodContrato int, @CodCliente int, @CodUsuario int, @CodSucursal int,
@CodConvenio int,@CodSectorFinanciero int, @CodProductoFinanciero int,@MontoOtorgado float,@FechaDesembolso date)
AS
BEGIN 
 
		update dbo.Contrato set  CodContrato = @CodContrato , CodCliente = @CodCliente, CodUsuario=@CodUsuario
		,CodSucursal=@CodSucursal,CodConvenio=@CodConvenio,CodSectorFinanciero=@CodSectorFinanciero,
		CodProductoFinanciero=@CodProductoFinanciero
		,MontoOtorgado=@MontoOtorgado,FechaDesembolso=@FechaDesembolso  where IdContrato = @IdContrato
END
GO
/****** Object:  StoredProcedure [dbo].[ContratoInsert]    Script Date: 05/16/2013 17:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>IdC
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ContratoInsert](@CodContrato int, @CodCliente int, @CodUsuario int, @CodSucursal int,
@CodConvenio int,@CodSectorFinanciero int, @CodProductoFinanciero int,@MontoOtorgado float,@FechaDesembolso date)
AS
BEGIN 
  
  insert into dbo.Contrato values(@CodContrato,@CodCliente,@CodUsuario,@CodSucursal,@CodConvenio,
  @CodSectorFinanciero,@CodProductoFinanciero,@MontoOtorgado,@FechaDesembolso)
END
GO
/****** Object:  StoredProcedure [dbo].[ContratoDelete]    Script Date: 05/16/2013 17:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ContratoDelete](@Id int)
AS
BEGIN 
		delete dbo.Contrato where IdContrato = @Id 
END
GO
/****** Object:  Table [dbo].[General]    Script Date: 05/16/2013 17:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[General](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEvento] [int] NOT NULL,
	[IdContrato] [int] NOT NULL,
	[EventosPactados] [int] NULL,
	[EventosEjecutados] [int] NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFin] [datetime] NULL,
	[Estado] [varchar](50) NULL,
	[Otros] [varchar](50) NULL,
 CONSTRAINT [PK_General] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[VistaEmpleadoLista]    Script Date: 05/16/2013 17:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaEmpleadoLista]
AS
SELECT     dbo.Usuario.Nombre, dbo.Usuario.Apellido, dbo.Sucursal.Nombre AS Departamento
FROM         dbo.Contrato INNER JOIN
                      dbo.Usuario ON dbo.Contrato.CodUsuario = dbo.Usuario.IdUsuario INNER JOIN
                      dbo.Sucursal ON dbo.Contrato.CodSucursal = dbo.Sucursal.IdSucursal
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Usuario"
            Begin Extent = 
               Top = 22
               Left = 7
               Bottom = 130
               Right = 196
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sucursal"
            Begin Extent = 
               Top = 24
               Left = 538
               Bottom = 132
               Right = 727
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Contrato"
            Begin Extent = 
               Top = 24
               Left = 271
               Bottom = 132
               Right = 462
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaEmpleadoLista'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaEmpleadoLista'
GO
/****** Object:  View [dbo].[VistaEventos]    Script Date: 05/16/2013 17:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaEventos]
AS
SELECT     dbo.Usuario.Nombre, dbo.Usuario.Apellido, dbo.Eventos.TituloEvento AS 'Titulo del Evento', dbo.TipoEvento.Evento AS 'Tipo de Evento', 
                      dbo.General.EventosPactados AS 'Eventos Pactados', dbo.General.EventosEjecutados AS 'Eventos Ejecutados', dbo.General.FechaInicio AS 'Fecha Inicio', 
                      dbo.General.FechaFin AS 'Fecha Fin', dbo.General.Estado, dbo.General.Otros
FROM         dbo.Contrato FULL OUTER JOIN
                      dbo.General ON dbo.Contrato.IdContrato = dbo.General.IdContrato FULL OUTER JOIN
                      dbo.Eventos ON dbo.General.IdEvento = dbo.Eventos.IdEvento FULL OUTER JOIN
                      dbo.TipoEvento ON dbo.Eventos.CodTipoEvento = dbo.TipoEvento.IdTipoEvento FULL OUTER JOIN
                      dbo.Usuario ON dbo.Contrato.CodUsuario = dbo.Usuario.IdUsuario
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[48] 4[15] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Contrato"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 222
               Right = 474
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "General"
            Begin Extent = 
               Top = 71
               Left = 528
               Bottom = 276
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Eventos"
            Begin Extent = 
               Top = 12
               Left = 774
               Bottom = 116
               Right = 972
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TipoEvento"
            Begin Extent = 
               Top = 157
               Left = 776
               Bottom = 246
               Right = 974
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Usuario"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 226
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1635
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Beg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaEventos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'in ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaEventos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaEventos'
GO
/****** Object:  Table [dbo].[GeneralDetalle]    Script Date: 05/16/2013 17:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralDetalle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdIndicador] [int] NULL,
	[AvanceCuantitativo] [float] NULL,
	[CodEvento] [int] NOT NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_GeneralDetalle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[GeneralDelete]    Script Date: 05/16/2013 17:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GeneralDelete](@Id int)
AS
BEGIN 
		delete dbo.General  where Id = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[GeneralUpdate]    Script Date: 05/16/2013 17:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GeneralUpdate](@Id int,@IdEvento int,@IdContrato int, @EventosPactados int,
@EventosEjecutados  int,@FechaInicio datetime,@FechaFin datetime,@Estado varchar(50),@Otros varchar(50))
AS
BEGIN 
 
		update dbo.General SET IdEvento=@IdEvento,IdContrato=@IdContrato,EventosPactados=@EventosPactados,
		EventosEjecutados=@EventosEjecutados,FechaInicio=@FechaInicio,FechaFin=@FechaFin,
		Estado=@Estado,Otros=@Otros where Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[GeneralInsert]    Script Date: 05/16/2013 17:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>IdC
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GeneralInsert](@IdEvento int,@IdContrato int, @EventosPactados int,
@EventosEjecutados  int,@FechaInicio datetime,@FechaFin datetime,@Estado varchar(50),@Otros varchar(50))
AS
BEGIN 
  
  insert into dbo.General values(@IdEvento,@IdContrato,@EventosPactados,@EventosEjecutados,@FechaInicio,
  @FechaFin,@Estado,@Otros)
END
GO
/****** Object:  StoredProcedure [dbo].[GeneralDetalleUpdate]    Script Date: 05/16/2013 17:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GeneralDetalleUpdate](@Id int,@IdIndicador int,@AvanceCuantitativo float,@CodEvento int, @Fecha datetime)
AS
BEGIN 
 
		update dbo.GeneralDetalle set  IdIndicador = @IdIndicador , AvanceCuantitativo = @AvanceCuantitativo,
		 CodEvento=@CodEvento,Fecha=@Fecha where Id = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[GeneralDetalleInsert]    Script Date: 05/16/2013 17:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>IdC
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GeneralDetalleInsert](@IdIndicador int,@AvanceCuantitativo float,@CodEvento int, @Fecha datetime)
AS
BEGIN 
  
  insert into dbo.GeneralDetalle values(@IdIndicador,@AvanceCuantitativo,@CodEvento,@Fecha)
END
GO
/****** Object:  StoredProcedure [dbo].[GeneralDetalleDelete]    Script Date: 05/16/2013 17:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GeneralDetalleDelete](@Id int)
AS
BEGIN 
		delete dbo.GeneralDetalle  where Id = @Id 
END
GO
/****** Object:  ForeignKey [FK_Usuario_CategoriaUsuario]    Script Date: 05/16/2013 17:33:22 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_CategoriaUsuario] FOREIGN KEY([CodCategoriaUsuario])
REFERENCES [dbo].[CategoriaUsuario] ([IdCategoria])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_CategoriaUsuario]
GO
/****** Object:  ForeignKey [FK_Usuario_Usuario]    Script Date: 05/16/2013 17:33:22 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Usuario] FOREIGN KEY([Responsable])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Usuario]
GO
/****** Object:  ForeignKey [FK_Municipio_Departamento]    Script Date: 05/16/2013 17:33:23 ******/
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD  CONSTRAINT [FK_Municipio_Departamento] FOREIGN KEY([idDepartamento])
REFERENCES [dbo].[Departamento] ([idDepartamento])
GO
ALTER TABLE [dbo].[Municipio] CHECK CONSTRAINT [FK_Municipio_Departamento]
GO
/****** Object:  ForeignKey [FK_Convenio_FuenteFinanciamiento]    Script Date: 05/16/2013 17:33:23 ******/
ALTER TABLE [dbo].[Convenio]  WITH CHECK ADD  CONSTRAINT [FK_Convenio_FuenteFinanciamiento] FOREIGN KEY([CodFuenteFinanciamiento])
REFERENCES [dbo].[FuenteFinanciamiento] ([idFF])
GO
ALTER TABLE [dbo].[Convenio] CHECK CONSTRAINT [FK_Convenio_FuenteFinanciamiento]
GO
/****** Object:  ForeignKey [FK_Eventos_TipoEvento]    Script Date: 05/16/2013 17:33:23 ******/
ALTER TABLE [dbo].[Eventos]  WITH CHECK ADD  CONSTRAINT [FK_Eventos_TipoEvento] FOREIGN KEY([CodTipoEvento])
REFERENCES [dbo].[TipoEvento] ([IdTipoEvento])
GO
ALTER TABLE [dbo].[Eventos] CHECK CONSTRAINT [FK_Eventos_TipoEvento]
GO
/****** Object:  ForeignKey [FK_DetalleConvenio_Convenio]    Script Date: 05/16/2013 17:33:23 ******/
ALTER TABLE [dbo].[DetalleConvenio]  WITH CHECK ADD  CONSTRAINT [FK_DetalleConvenio_Convenio] FOREIGN KEY([CodConvenio])
REFERENCES [dbo].[Convenio] ([IdC])
GO
ALTER TABLE [dbo].[DetalleConvenio] CHECK CONSTRAINT [FK_DetalleConvenio_Convenio]
GO
/****** Object:  ForeignKey [FK_DetalleConvenio_ProductoFinanciero]    Script Date: 05/16/2013 17:33:23 ******/
ALTER TABLE [dbo].[DetalleConvenio]  WITH CHECK ADD  CONSTRAINT [FK_DetalleConvenio_ProductoFinanciero] FOREIGN KEY([CodProducto])
REFERENCES [dbo].[ProductoFinanciero] ([IdProducto])
GO
ALTER TABLE [dbo].[DetalleConvenio] CHECK CONSTRAINT [FK_DetalleConvenio_ProductoFinanciero]
GO
/****** Object:  ForeignKey [FK_Cliente_Municipio]    Script Date: 05/16/2013 17:33:24 ******/
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Municipio] FOREIGN KEY([CodMunicipio])
REFERENCES [dbo].[Municipio] ([idMunicipio])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Municipio]
GO
/****** Object:  ForeignKey [FK_Historial_Usuario]    Script Date: 05/16/2013 17:33:24 ******/
ALTER TABLE [dbo].[Historial]  WITH CHECK ADD  CONSTRAINT [FK_Historial_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Historial] CHECK CONSTRAINT [FK_Historial_Usuario]
GO
/****** Object:  ForeignKey [FK_Sucursal_Municipio]    Script Date: 05/16/2013 17:33:24 ******/
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Sucursal_Municipio] FOREIGN KEY([idMunicipio])
REFERENCES [dbo].[Municipio] ([idMunicipio])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_Sucursal_Municipio]
GO
/****** Object:  ForeignKey [FK_Contrato_Cliente]    Script Date: 05/16/2013 17:33:35 ******/
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_Cliente] FOREIGN KEY([CodCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_Cliente]
GO
/****** Object:  ForeignKey [FK_Contrato_Convenio]    Script Date: 05/16/2013 17:33:35 ******/
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_Convenio] FOREIGN KEY([CodConvenio])
REFERENCES [dbo].[Convenio] ([IdC])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_Convenio]
GO
/****** Object:  ForeignKey [FK_Contrato_ProductoFinanciero]    Script Date: 05/16/2013 17:33:35 ******/
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_ProductoFinanciero] FOREIGN KEY([CodProductoFinanciero])
REFERENCES [dbo].[ProductoFinanciero] ([IdProducto])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_ProductoFinanciero]
GO
/****** Object:  ForeignKey [FK_Contrato_SectorProductivo]    Script Date: 05/16/2013 17:33:35 ******/
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_SectorProductivo] FOREIGN KEY([CodSectorProductivo])
REFERENCES [dbo].[SectorProductivo] ([Id])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_SectorProductivo]
GO
/****** Object:  ForeignKey [FK_Contrato_Sucursal]    Script Date: 05/16/2013 17:33:35 ******/
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_Sucursal] FOREIGN KEY([CodSucursal])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_Sucursal]
GO
/****** Object:  ForeignKey [FK_Contrato_Usuario]    Script Date: 05/16/2013 17:33:35 ******/
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_Usuario] FOREIGN KEY([CodUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_Usuario]
GO
/****** Object:  ForeignKey [FK_Finca_Cliente]    Script Date: 05/16/2013 17:33:36 ******/
ALTER TABLE [dbo].[Finca]  WITH CHECK ADD  CONSTRAINT [FK_Finca_Cliente] FOREIGN KEY([CodCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Finca] CHECK CONSTRAINT [FK_Finca_Cliente]
GO
/****** Object:  ForeignKey [FK_Finca_Coordenadas]    Script Date: 05/16/2013 17:33:36 ******/
ALTER TABLE [dbo].[Finca]  WITH CHECK ADD  CONSTRAINT [FK_Finca_Coordenadas] FOREIGN KEY([CodCoordenada])
REFERENCES [dbo].[Coordenadas] ([IdCoordenada])
GO
ALTER TABLE [dbo].[Finca] CHECK CONSTRAINT [FK_Finca_Coordenadas]
GO
/****** Object:  ForeignKey [FK_General_Contrato]    Script Date: 05/16/2013 17:33:37 ******/
ALTER TABLE [dbo].[General]  WITH CHECK ADD  CONSTRAINT [FK_General_Contrato] FOREIGN KEY([IdContrato])
REFERENCES [dbo].[Contrato] ([IdContrato])
GO
ALTER TABLE [dbo].[General] CHECK CONSTRAINT [FK_General_Contrato]
GO
/****** Object:  ForeignKey [FK_General_Eventos]    Script Date: 05/16/2013 17:33:37 ******/
ALTER TABLE [dbo].[General]  WITH CHECK ADD  CONSTRAINT [FK_General_Eventos] FOREIGN KEY([IdEvento])
REFERENCES [dbo].[Eventos] ([IdEvento])
GO
ALTER TABLE [dbo].[General] CHECK CONSTRAINT [FK_General_Eventos]
GO
/****** Object:  ForeignKey [FK_GeneralDetalle_General]    Script Date: 05/16/2013 17:33:37 ******/
ALTER TABLE [dbo].[GeneralDetalle]  WITH CHECK ADD  CONSTRAINT [FK_GeneralDetalle_General] FOREIGN KEY([CodEvento])
REFERENCES [dbo].[General] ([Id])
GO
ALTER TABLE [dbo].[GeneralDetalle] CHECK CONSTRAINT [FK_GeneralDetalle_General]
GO
/****** Object:  ForeignKey [FK_GeneralDetalle_Indicador]    Script Date: 05/16/2013 17:33:37 ******/
ALTER TABLE [dbo].[GeneralDetalle]  WITH CHECK ADD  CONSTRAINT [FK_GeneralDetalle_Indicador] FOREIGN KEY([IdIndicador])
REFERENCES [dbo].[Indicador] ([IdIndicador])
GO
ALTER TABLE [dbo].[GeneralDetalle] CHECK CONSTRAINT [FK_GeneralDetalle_Indicador]
GO
