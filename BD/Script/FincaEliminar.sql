USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[FincaDelete]    Script Date: 03/29/2013 01:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FincaDelete](@Id int)
AS
BEGIN 
		delete  dbo.Finca where IdFinca=@Id
END
