USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[updateindicador]    Script Date: 03/28/2013 20:38:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[updateindicador](@Id int, @NombreIndicador varchar(30))
AS
BEGIN 
 
		update dbo.Indicador set  NombreIndicador = @NombreIndicador  where IdIndicador = @Id 
END