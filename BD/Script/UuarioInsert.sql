USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[UuarioInsert](    Script Date: 03/28/2013 15:44:32 ******/
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
