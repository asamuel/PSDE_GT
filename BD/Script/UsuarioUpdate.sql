USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[UsuarioUpdate]    Script Date: 03/28/2013 15:52:35 ******/
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
