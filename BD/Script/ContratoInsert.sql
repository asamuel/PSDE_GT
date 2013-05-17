USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[ContratoInsert]    Script Date: 04/01/2013 19:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>IdC
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ContratoInsert](@CodContrato int, @CodCliente int, @CodUsuario int, @CodSucursal int,
@CodConvenio int,@CodSectorFinanciero int, @CodProductoFinanciero int,@MontoOtorgado float,@FechaDesembolso date)
AS
BEGIN 
  
  insert into dbo.Contrato values(@CodContrato,@CodCliente,@CodUsuario,@CodSucursal,@CodConvenio,
  @CodSectorFinanciero,@CodProductoFinanciero,@MontoOtorgado,@FechaDesembolso)
END
