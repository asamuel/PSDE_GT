USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[ClienteUpdate]    Script Date: 03/29/2013 22:23:25 ******/
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