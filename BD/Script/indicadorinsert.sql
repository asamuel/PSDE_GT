USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[insertindicador]    Script Date: 03/28/2013 20:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[insertindicador](@NombreIndicador varchar(30))
AS
BEGIN 
 
		insert into dbo.Indicador values(@NombreIndicador)
END
