USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[ConvenioDelete]    Script Date: 03/28/2013 21:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ConvenioDelete](@Id int)
AS
BEGIN 
		delete  dbo.Convenio where IdC = @Id 
END