USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[FincaInsert]    Script Date: 03/29/2013 01:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>IdC
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FincaInsert](@HaTotalFinca float,@HaEfectiva float,@UsoActualSuelo float,@CodCliente int,@CodCoordenada int)
AS
BEGIN 
 
		insert into dbo.Finca values(@HaTotalFinca,@HaEfectiva,@UsoActualSuelo,@CodCliente,@CodCoordenada)
END
