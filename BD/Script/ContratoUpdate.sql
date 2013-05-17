USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[ContratoUpdate]    Script Date: 04/01/2013 19:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ContratoUpdate](@IdContrato int,@CodContrato int, @CodCliente int, @CodUsuario int, @CodSucursal int,
@CodConvenio int,@CodSectorFinanciero int, @CodProductoFinanciero int,@MontoOtorgado float,@FechaDesembolso date)
AS
BEGIN 
 
		update dbo.Contrato set  CodContrato = @CodContrato , CodCliente = @CodCliente, CodUsuario=@CodUsuario
		,CodSucursal=@CodSucursal,CodConvenio=@CodConvenio,CodSectorFinanciero=@CodSectorFinanciero,
		CodProductoFinanciero=@CodProductoFinanciero
		,MontoOtorgado=@MontoOtorgado,FechaDesembolso=@FechaDesembolso  where IdContrato = @IdContrato
END