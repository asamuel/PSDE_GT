USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[ClienteInsert]    Script Date: 03/29/2013 22:18:10 ******/
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
