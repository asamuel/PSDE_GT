USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[GeneralInsert]    Script Date: 04/01/2013 18:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>IdC
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GeneralInsert](@IdEvento int,@IdContrato int, @EventosPactados int,
@EventosEjecutados  int,@FechaInicio datetime,@FechaFin datetime,@Estado varchar(50),@Otros varchar(50))
AS
BEGIN 
  
  insert into dbo.General values(@IdEvento,@IdContrato,@EventosPactados,@EventosEjecutados,@FechaInicio,
  @FechaFin,@Estado,@Otros)
END
