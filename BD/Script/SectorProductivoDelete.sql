USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[SectorProductivoDelete]   Script Date: 03/28/2013 15:18:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SectorProductivoDelete](@Id int)
AS
BEGIN 
		delete dbo.SectorProductivo where Id = @Id 
END
