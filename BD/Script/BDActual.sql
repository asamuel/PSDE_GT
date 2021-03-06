USE [master]
GO
/****** Object:  Database [ProgramaSDE1]    Script Date: 04/27/2013 14:22:19 ******/
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
/****** Object:  Table [dbo].[Departamento]    Script Date: 04/27/2013 14:22:23 ******/
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
INSERT [dbo].[Departamento] ([idDepartamento], [Nombre]) VALUES (1, N'sdfgsdgf')
SET IDENTITY_INSERT [dbo].[Departamento] OFF
/****** Object:  Table [dbo].[FuenteFinanciamiento]    Script Date: 04/27/2013 14:22:23 ******/
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
/****** Object:  Table [dbo].[CategoriaUsuario]    Script Date: 04/27/2013 14:22:23 ******/
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
INSERT [dbo].[CategoriaUsuario] ([IdCategoria], [Nombre], [Descripcion]) VALUES (2, N'facilitador', N'anda en el monte')
INSERT [dbo].[CategoriaUsuario] ([IdCategoria], [Nombre], [Descripcion]) VALUES (3, N'Empleado', N'Anda en la calle.')
SET IDENTITY_INSERT [dbo].[CategoriaUsuario] OFF
/****** Object:  Table [dbo].[Convenio]    Script Date: 04/27/2013 14:22:23 ******/
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
 CONSTRAINT [PK_Convenio] PRIMARY KEY CLUSTERED 
(
	[IdC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coordenadas]    Script Date: 04/27/2013 14:22:23 ******/
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
/****** Object:  Table [dbo].[Indicador]    Script Date: 04/27/2013 14:22:23 ******/
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
/****** Object:  Table [dbo].[ProductoFinanciero]    Script Date: 04/27/2013 14:22:23 ******/
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
/****** Object:  Table [dbo].[TipoEvento]    Script Date: 04/27/2013 14:22:23 ******/
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
/****** Object:  Table [dbo].[SectorProductivo]    Script Date: 04/27/2013 14:22:23 ******/
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
/****** Object:  StoredProcedure [dbo].[ProductoFinancieroUpdate]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  StoredProcedure [dbo].[ProductoFinancieroInsert]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  StoredProcedure [dbo].[ProductoFinancieroDelete]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 04/27/2013 14:22:29 ******/
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
INSERT [dbo].[Usuario] ([IdUsuario], [CodCategoriaUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Celular], [Cedula], [Responsable]) VALUES (7, 2, N'Alex Samuel', N'Benavidez', N'273', N'asa', N'545', N'45', NULL)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  StoredProcedure [dbo].[updateindicador]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  StoredProcedure [dbo].[updatefuentefinanciamiento]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  StoredProcedure [dbo].[updateDepartamento]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  StoredProcedure [dbo].[updatecategoriausuario]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  StoredProcedure [dbo].[TipoEventoUpdate]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  StoredProcedure [dbo].[TipoEventoInsert]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  StoredProcedure [dbo].[TipoEventoDelete]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  StoredProcedure [dbo].[SectorProductivoUpdate]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  StoredProcedure [dbo].[SectorProductivoInsert]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  StoredProcedure [dbo].[SectorProductivoDelete]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  Table [dbo].[Municipio]    Script Date: 04/27/2013 14:22:29 ******/
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
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (1, N'La paz', 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [idDepartamento]) VALUES (3, N'Jinotepe', 1)
SET IDENTITY_INSERT [dbo].[Municipio] OFF
/****** Object:  StoredProcedure [dbo].[insertindicador]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  StoredProcedure [dbo].[insertfuentefinanciamiento]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  StoredProcedure [dbo].[insertDepartamento]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  StoredProcedure [dbo].[insertcategoriausuario]    Script Date: 04/27/2013 14:22:29 ******/
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
/****** Object:  StoredProcedure [dbo].[CoordenadaInsert]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[ConvenioUpdate]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[ConvenioInsert]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[ConvenioDelete]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  Table [dbo].[DetalleConvenio]    Script Date: 04/27/2013 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleConvenio](
	[IdDC] [int] IDENTITY(1,1) NOT NULL,
	[CodConvenio] [int] NOT NULL,
	[CodFuentF] [int] NOT NULL,
	[CodProducto] [int] NOT NULL,
	[NumeroClientes] [int] NULL,
	[InversionCliente] [float] NULL,
 CONSTRAINT [PK_DetalleConvenio_1] PRIMARY KEY CLUSTERED 
(
	[IdDC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[deleteindicador]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[deletefuentefinanciamiento]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[deleteDepartamento]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[deletecategoriausuario]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[CoordenaUpdate]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[CoordenadasDelete]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  Table [dbo].[Eventos]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[EventoInsert]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[EventoDelete]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[DetalleConvenioUpdate]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[DetalleConvenioInsert]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[DetalleConvenioDelete]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  Table [dbo].[Cliente]    Script Date: 04/27/2013 14:22:30 ******/
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
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Sexo], [Cedula], [Edad], [Telefono], [Direccion], [Comarca], [CodWeb], [CodMunicipio]) VALUES (2, N'rtyerty', N'trytry', 1, N'rtwertwetwert', 5, N'4544', N'NULLdsfgdfgsdfg', N'sdfgd', N'dfgsdfg', 1)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Sexo], [Cedula], [Edad], [Telefono], [Direccion], [Comarca], [CodWeb], [CodMunicipio]) VALUES (4, N'asasa', N'sasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Sexo], [Cedula], [Edad], [Telefono], [Direccion], [Comarca], [CodWeb], [CodMunicipio]) VALUES (5, N'asasa', N'sasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Sexo], [Cedula], [Edad], [Telefono], [Direccion], [Comarca], [CodWeb], [CodMunicipio]) VALUES (8, N'as', N'as', 0, N'as', 25, N' as', N'1', N'1', N'as', 1)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Sexo], [Cedula], [Edad], [Telefono], [Direccion], [Comarca], [CodWeb], [CodMunicipio]) VALUES (9, N'René', N'Cortez', 1, N'001-200295-005P', 18, N'22791163', N'Tierra Prometida', N'Managua', N'001', 1)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
/****** Object:  StoredProcedure [dbo].[MunicipioUpdate]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[MunicipioInsert]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[MunicipioDelete]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  Table [dbo].[Historial]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[UuarioInsert]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[UsuarioUpdate]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[UsuarioDelete]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  Table [dbo].[Sucursal]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  StoredProcedure [dbo].[EventoUpdate]    Script Date: 04/27/2013 14:22:30 ******/
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
/****** Object:  View [dbo].[VistaMunicipioLista]    Script Date: 04/27/2013 14:22:34 ******/
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
/****** Object:  View [dbo].[VistaClienteLista]    Script Date: 04/27/2013 14:22:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaClienteLista]
AS
SELECT     dbo.Cliente.IdCliente, dbo.Cliente.Nombre + '  ' + dbo.Cliente.Apellido AS [Nombre Cliente], dbo.Cliente.Cedula AS Cédula, dbo.Cliente.Sexo, dbo.Cliente.Edad, 
                      dbo.Cliente.Telefono AS Teléfono, dbo.Cliente.Direccion AS Dirección, dbo.Cliente.Comarca, dbo.Municipio.Nombre AS Municipio, 
                      dbo.Cliente.CodWeb AS [Código Web]
FROM         dbo.Cliente INNER JOIN
                      dbo.Municipio ON dbo.Cliente.CodMunicipio = dbo.Municipio.idMunicipio
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[44] 4[39] 2[11] 3) )"
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
/****** Object:  StoredProcedure [dbo].[SucursalUpdate]    Script Date: 04/27/2013 14:22:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SucursalInsert]    Script Date: 04/27/2013 14:22:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SucursalDelete]    Script Date: 04/27/2013 14:22:34 ******/
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
/****** Object:  Table [dbo].[Contrato]    Script Date: 04/27/2013 14:22:34 ******/
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
	[CodConvenio] [int] NOT NULL,
	[CodSectorProductivo] [int] NOT NULL,
	[CodProductoFinanciero] [int] NOT NULL,
	[MontoOtorgado] [float] NOT NULL,
	[FechaDesembolso] [date] NOT NULL,
 CONSTRAINT [PK_Contrato] PRIMARY KEY CLUSTERED 
(
	[IdContrato] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ClienteUpdate]    Script Date: 04/27/2013 14:22:34 ******/
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
/****** Object:  StoredProcedure [dbo].[ClienteInsert]    Script Date: 04/27/2013 14:22:34 ******/
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
/****** Object:  StoredProcedure [dbo].[ClienteDelete]    Script Date: 04/27/2013 14:22:34 ******/
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
/****** Object:  Table [dbo].[Finca]    Script Date: 04/27/2013 14:22:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Finca](
	[IdFinca] [int] IDENTITY(1,1) NOT NULL,
	[HaTotalFinca] [float] NOT NULL,
	[HaEfectiva] [float] NOT NULL,
	[UsoActualSuelo] [float] NOT NULL,
	[CodCliente] [int] NOT NULL,
	[CodCoordenada] [int] NOT NULL,
 CONSTRAINT [PK_Finca] PRIMARY KEY CLUSTERED 
(
	[IdFinca] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[FincaUpdate]    Script Date: 04/27/2013 14:22:34 ******/
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
/****** Object:  StoredProcedure [dbo].[FincaInsert]    Script Date: 04/27/2013 14:22:34 ******/
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
/****** Object:  StoredProcedure [dbo].[FincaDelete]    Script Date: 04/27/2013 14:22:34 ******/
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
/****** Object:  StoredProcedure [dbo].[ContratoUpdate]    Script Date: 04/27/2013 14:22:34 ******/
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
/****** Object:  StoredProcedure [dbo].[ContratoInsert]    Script Date: 04/27/2013 14:22:34 ******/
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
/****** Object:  StoredProcedure [dbo].[ContratoDelete]    Script Date: 04/27/2013 14:22:35 ******/
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
/****** Object:  Table [dbo].[General]    Script Date: 04/27/2013 14:22:35 ******/
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
/****** Object:  Table [dbo].[GeneralDetalle]    Script Date: 04/27/2013 14:22:35 ******/
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
/****** Object:  StoredProcedure [dbo].[GeneralDelete]    Script Date: 04/27/2013 14:22:35 ******/
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
/****** Object:  StoredProcedure [dbo].[GeneralUpdate]    Script Date: 04/27/2013 14:22:35 ******/
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
/****** Object:  StoredProcedure [dbo].[GeneralInsert]    Script Date: 04/27/2013 14:22:35 ******/
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
/****** Object:  StoredProcedure [dbo].[GeneralDetalleUpdate]    Script Date: 04/27/2013 14:22:35 ******/
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
/****** Object:  StoredProcedure [dbo].[GeneralDetalleInsert]    Script Date: 04/27/2013 14:22:35 ******/
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
/****** Object:  StoredProcedure [dbo].[GeneralDetalleDelete]    Script Date: 04/27/2013 14:22:35 ******/
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
/****** Object:  ForeignKey [FK_Usuario_CategoriaUsuario]    Script Date: 04/27/2013 14:22:29 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_CategoriaUsuario] FOREIGN KEY([CodCategoriaUsuario])
REFERENCES [dbo].[CategoriaUsuario] ([IdCategoria])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_CategoriaUsuario]
GO
/****** Object:  ForeignKey [FK_Usuario_Usuario]    Script Date: 04/27/2013 14:22:29 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Usuario] FOREIGN KEY([Responsable])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Usuario]
GO
/****** Object:  ForeignKey [FK_Municipio_Departamento]    Script Date: 04/27/2013 14:22:29 ******/
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD  CONSTRAINT [FK_Municipio_Departamento] FOREIGN KEY([idDepartamento])
REFERENCES [dbo].[Departamento] ([idDepartamento])
GO
ALTER TABLE [dbo].[Municipio] CHECK CONSTRAINT [FK_Municipio_Departamento]
GO
/****** Object:  ForeignKey [FK_DetalleConvenio_Convenio]    Script Date: 04/27/2013 14:22:30 ******/
ALTER TABLE [dbo].[DetalleConvenio]  WITH CHECK ADD  CONSTRAINT [FK_DetalleConvenio_Convenio] FOREIGN KEY([CodConvenio])
REFERENCES [dbo].[Convenio] ([IdC])
GO
ALTER TABLE [dbo].[DetalleConvenio] CHECK CONSTRAINT [FK_DetalleConvenio_Convenio]
GO
/****** Object:  ForeignKey [FK_DetalleConvenio_FuenteFinanciamiento]    Script Date: 04/27/2013 14:22:30 ******/
ALTER TABLE [dbo].[DetalleConvenio]  WITH CHECK ADD  CONSTRAINT [FK_DetalleConvenio_FuenteFinanciamiento] FOREIGN KEY([CodFuentF])
REFERENCES [dbo].[FuenteFinanciamiento] ([idFF])
GO
ALTER TABLE [dbo].[DetalleConvenio] CHECK CONSTRAINT [FK_DetalleConvenio_FuenteFinanciamiento]
GO
/****** Object:  ForeignKey [FK_DetalleConvenio_ProductoFinanciero]    Script Date: 04/27/2013 14:22:30 ******/
ALTER TABLE [dbo].[DetalleConvenio]  WITH CHECK ADD  CONSTRAINT [FK_DetalleConvenio_ProductoFinanciero] FOREIGN KEY([CodProducto])
REFERENCES [dbo].[ProductoFinanciero] ([IdProducto])
GO
ALTER TABLE [dbo].[DetalleConvenio] CHECK CONSTRAINT [FK_DetalleConvenio_ProductoFinanciero]
GO
/****** Object:  ForeignKey [FK_Eventos_TipoEvento]    Script Date: 04/27/2013 14:22:30 ******/
ALTER TABLE [dbo].[Eventos]  WITH CHECK ADD  CONSTRAINT [FK_Eventos_TipoEvento] FOREIGN KEY([CodTipoEvento])
REFERENCES [dbo].[TipoEvento] ([IdTipoEvento])
GO
ALTER TABLE [dbo].[Eventos] CHECK CONSTRAINT [FK_Eventos_TipoEvento]
GO
/****** Object:  ForeignKey [FK_Cliente_Municipio]    Script Date: 04/27/2013 14:22:30 ******/
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Municipio] FOREIGN KEY([CodMunicipio])
REFERENCES [dbo].[Municipio] ([idMunicipio])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Municipio]
GO
/****** Object:  ForeignKey [FK_Historial_Usuario]    Script Date: 04/27/2013 14:22:30 ******/
ALTER TABLE [dbo].[Historial]  WITH CHECK ADD  CONSTRAINT [FK_Historial_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Historial] CHECK CONSTRAINT [FK_Historial_Usuario]
GO
/****** Object:  ForeignKey [FK_Sucursal_Municipio]    Script Date: 04/27/2013 14:22:30 ******/
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Sucursal_Municipio] FOREIGN KEY([idMunicipio])
REFERENCES [dbo].[Municipio] ([idMunicipio])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_Sucursal_Municipio]
GO
/****** Object:  ForeignKey [FK_Contrato_Cliente]    Script Date: 04/27/2013 14:22:34 ******/
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_Cliente] FOREIGN KEY([CodCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_Cliente]
GO
/****** Object:  ForeignKey [FK_Contrato_Convenio]    Script Date: 04/27/2013 14:22:34 ******/
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_Convenio] FOREIGN KEY([CodConvenio])
REFERENCES [dbo].[Convenio] ([IdC])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_Convenio]
GO
/****** Object:  ForeignKey [FK_Contrato_ProductoFinanciero]    Script Date: 04/27/2013 14:22:34 ******/
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_ProductoFinanciero] FOREIGN KEY([CodProductoFinanciero])
REFERENCES [dbo].[ProductoFinanciero] ([IdProducto])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_ProductoFinanciero]
GO
/****** Object:  ForeignKey [FK_Contrato_SectorProductivo]    Script Date: 04/27/2013 14:22:34 ******/
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_SectorProductivo] FOREIGN KEY([CodSectorProductivo])
REFERENCES [dbo].[SectorProductivo] ([Id])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_SectorProductivo]
GO
/****** Object:  ForeignKey [FK_Contrato_Sucursal]    Script Date: 04/27/2013 14:22:34 ******/
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_Sucursal] FOREIGN KEY([CodSucursal])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_Sucursal]
GO
/****** Object:  ForeignKey [FK_Contrato_Usuario]    Script Date: 04/27/2013 14:22:34 ******/
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_Usuario] FOREIGN KEY([CodUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_Usuario]
GO
/****** Object:  ForeignKey [FK_Finca_Cliente]    Script Date: 04/27/2013 14:22:34 ******/
ALTER TABLE [dbo].[Finca]  WITH CHECK ADD  CONSTRAINT [FK_Finca_Cliente] FOREIGN KEY([CodCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Finca] CHECK CONSTRAINT [FK_Finca_Cliente]
GO
/****** Object:  ForeignKey [FK_Finca_Coordenadas]    Script Date: 04/27/2013 14:22:34 ******/
ALTER TABLE [dbo].[Finca]  WITH CHECK ADD  CONSTRAINT [FK_Finca_Coordenadas] FOREIGN KEY([CodCoordenada])
REFERENCES [dbo].[Coordenadas] ([IdCoordenada])
GO
ALTER TABLE [dbo].[Finca] CHECK CONSTRAINT [FK_Finca_Coordenadas]
GO
/****** Object:  ForeignKey [FK_General_Contrato]    Script Date: 04/27/2013 14:22:35 ******/
ALTER TABLE [dbo].[General]  WITH CHECK ADD  CONSTRAINT [FK_General_Contrato] FOREIGN KEY([IdContrato])
REFERENCES [dbo].[Contrato] ([IdContrato])
GO
ALTER TABLE [dbo].[General] CHECK CONSTRAINT [FK_General_Contrato]
GO
/****** Object:  ForeignKey [FK_General_Eventos]    Script Date: 04/27/2013 14:22:35 ******/
ALTER TABLE [dbo].[General]  WITH CHECK ADD  CONSTRAINT [FK_General_Eventos] FOREIGN KEY([IdEvento])
REFERENCES [dbo].[Eventos] ([IdEvento])
GO
ALTER TABLE [dbo].[General] CHECK CONSTRAINT [FK_General_Eventos]
GO
/****** Object:  ForeignKey [FK_GeneralDetalle_General]    Script Date: 04/27/2013 14:22:35 ******/
ALTER TABLE [dbo].[GeneralDetalle]  WITH CHECK ADD  CONSTRAINT [FK_GeneralDetalle_General] FOREIGN KEY([CodEvento])
REFERENCES [dbo].[General] ([Id])
GO
ALTER TABLE [dbo].[GeneralDetalle] CHECK CONSTRAINT [FK_GeneralDetalle_General]
GO
/****** Object:  ForeignKey [FK_GeneralDetalle_Indicador]    Script Date: 04/27/2013 14:22:35 ******/
ALTER TABLE [dbo].[GeneralDetalle]  WITH CHECK ADD  CONSTRAINT [FK_GeneralDetalle_Indicador] FOREIGN KEY([IdIndicador])
REFERENCES [dbo].[Indicador] ([IdIndicador])
GO
ALTER TABLE [dbo].[GeneralDetalle] CHECK CONSTRAINT [FK_GeneralDetalle_Indicador]
GO
