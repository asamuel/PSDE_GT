USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[DetalleConvenio]    Script Date: 03/28/2013 22:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>IdC
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DetalleConvenioInsert](@CodConvenio int,@CodFuentF int,@CodProducto int,@NumeroClientes int,@InversionCliente float)
AS
BEGIN 
 
		insert into dbo.DetalleConvenio values(@CodConvenio,@CodFuentF,@CodProducto,@NumeroClientes,@InversionCliente)
END
