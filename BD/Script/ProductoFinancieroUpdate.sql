USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[ProductoFinancieroUpdate]    Script Date: 03/28/2013 15:29:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProductoFinancieroUpdate](@Id int, @Nombre varchar(30))
AS
BEGIN 
 
		update dbo.ProductoFinanciero set  Nombre = @Nombre where IdProducto = @Id 
END
