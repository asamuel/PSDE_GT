USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[CoordenaUpdate]    Script Date: 03/29/2013 22:16:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[CoordenaUpdate](@IdCoordenada int,@Coordenada_X_UTM varchar(20),@Coordenada_Y_UTM varchar(20),
 @Coordenada_Y_GMS varchar(20),@Coordenada_X_GMS varchar(20))
AS
BEGIN 
 
		update dbo.Coordenadas set  Coordenada_X_UTM = @Coordenada_X_UTM , Coordenada_Y_UTM=@Coordenada_Y_UTM,
		 Coordenada_Y_GMS=@Coordenada_Y_GMS, Coordenada_X_GMS=@Coordenada_X_GMS where IdCoordenada = @IdCoordenada 
END