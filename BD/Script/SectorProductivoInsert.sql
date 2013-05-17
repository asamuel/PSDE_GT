USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[SectorProductivoInsert]    Script Date: 03/28/2013 15:20:40 ******/
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
