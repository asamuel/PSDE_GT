USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[DetalleConvenioUpdate]    Script Date: 03/28/2013 22:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DetalleConvenioUpdate](@IdDC int, @CodConvenio int,@CodFuentF int,@CodProducto int,
@NumeroClientes int,@InversionCliente float)
AS
BEGIN 
 
		update dbo.DetalleConvenio set  CodConvenio = @CodConvenio , CodFuentF = @CodFuentF,CodProducto=@CodProducto,
		 NumeroClientes=@NumeroClientes,InversionCliente=@InversionCliente  where IdDC = @IdDC 
END
