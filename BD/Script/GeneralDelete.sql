USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[GeneralDelete]    Script Date: 04/01/2013 18:31:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GeneralDelete](@Id int)
AS
BEGIN 
		delete dbo.General  where Id = @Id 
END