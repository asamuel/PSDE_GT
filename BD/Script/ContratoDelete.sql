USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[ContratoDelete]    Script Date: 04/01/2013 19:02:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ContratoDelete](@Id int)
AS
BEGIN 
		delete dbo.Contrato where IdContrato = @Id 
END