USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[ClienteDelete]    Script Date: 03/29/2013 22:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ClienteDelete](@Id int)
AS
BEGIN 
		delete dbo.Cliente  where IdCliente = @Id 
END