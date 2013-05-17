USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[ProductoFinancieroDelete]    Script Date: 03/28/2013 15:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProductoFinancieroDelete](@Id int)
AS
BEGIN 
		delete dbo.ProductoFinanciero where IdProducto = @Id 
END
