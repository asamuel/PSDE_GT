USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[CoordenadaInsert]    Script Date: 03/29/2013 22:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>IdC
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[CoordenadaInsert](@Coordenada_X_UTM varchar(20),@Coordenada_Y_UTM varchar(20),
 @Coordenada_Y_GMS varchar(20),@Coordenada_X_GMS varchar(20))
AS
BEGIN 
 
		insert into dbo.Coordenadas values(@Coordenada_X_UTM,@Coordenada_Y_UTM,@Coordenada_Y_GMS,@Coordenada_X_GMS)
END
