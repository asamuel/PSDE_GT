USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[DetalleConvenioDelete]   Script Date: 03/28/2013 22:53:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DetalleConvenioDelete](@Id int)
AS
BEGIN 
		delete  dbo.DetalleConvenio where IdDC = @Id 
END