USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[FincaUpdate]    Script Date: 03/29/2013 01:30:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FincaUpdate](@IdFinca int,@HaTotalFinca float,@HaEfectiva float,@UsoActualSuelo float,@CodCliente int,@CodCoordenada int)
AS
BEGIN 
 
		update  dbo.Finca set HaTotalFinca = @HaTotalFinca , HaEfectiva = @HaEfectiva, UsoActualSuelo=@UsoActualSuelo,
		CodCliente=@CodCliente,CodCoordenada=@CodCoordenada WHERE IdFinca=@IdFinca
END
