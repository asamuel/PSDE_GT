USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[GeneralDetalleUpdate]    Script Date: 04/01/2013 18:57:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GeneralDetalleUpdate](@Id int,@IdIndicador int,@AvanceCuantitativo float,@CodEvento int, @Fecha datetime)
AS
BEGIN 
 
		update dbo.GeneralDetalle set  IdIndicador = @IdIndicador , AvanceCuantitativo = @AvanceCuantitativo,
		 CodEvento=@CodEvento,Fecha=@Fecha where Id = @Id 
END