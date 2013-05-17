USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[SectorProductivoUpdate]    Script Date: 03/28/2013 15:22:15 ******/
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
