USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[CoordenadasDelete]    Script Date: 03/29/2013 22:16:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[CoordenadasDelete](@Id int)
AS
BEGIN 
		delete dbo.Coordenadas where IdCoordenada = @Id 
END