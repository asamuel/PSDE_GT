USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[UsuarioDelete]   Script Date: 03/28/2013 15:42:52 ******/
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
