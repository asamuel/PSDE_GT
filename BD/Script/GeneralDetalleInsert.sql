USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[GeneralDetalleInsert]    Script Date: 04/01/2013 18:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>IdC
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GeneralDetalleInsert](@IdIndicador int,@AvanceCuantitativo float,@CodEvento int, @Fecha datetime)
AS
BEGIN 
  
  insert into dbo.GeneralDetalle values(@IdIndicador,@AvanceCuantitativo,@CodEvento,@Fecha)
END
