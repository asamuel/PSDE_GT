USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[ProductoFinancieroInsert]    Script Date: 03/28/2013 15:27:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProductoFinancieroInsert](@Nombre varchar(30))
AS
BEGIN 
 
		insert into dbo.ProductoFinanciero values(@Nombre)
END
