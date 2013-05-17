USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[GeneralDetalleDelete]    Script Date: 04/01/2013 18:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GeneralDetalleDelete](@Id int)
AS
BEGIN 
		delete dbo.GeneralDetalle  where Id = @Id 
END