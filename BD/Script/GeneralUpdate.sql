USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[GeneralUpdate]    Script Date: 04/01/2013 18:47:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GeneralUpdate](@Id int,@IdEvento int,@IdContrato int, @EventosPactados int,
@EventosEjecutados  int,@FechaInicio datetime,@FechaFin datetime,@Estado varchar(50),@Otros varchar(50))
AS
BEGIN 
 
		update dbo.General SET IdEvento=@IdEvento,IdContrato=@IdContrato,EventosPactados=@EventosPactados,
		EventosEjecutados=@EventosEjecutados,FechaInicio=@FechaInicio,FechaFin=@FechaFin,
		Estado=@Estado,Otros=@Otros where Id=@Id
END