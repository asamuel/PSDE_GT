USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[FincaInsert]    Script Date: 05/16/2013 18:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FincaInsert](@HaTotalFinca float,@HaEfectiva float,
									 @UsoActualSuelo float,@CodCliente int,
									 @Coordenada_X_UTM varchar(50),@Coordenada_Y_UTM varchar(50),
									 @Coordenada_X_GMS varchar(50),@Coordenada_Y_GMS varchar(50))
AS
BEGIN 
 
		insert into dbo.Finca values(@HaTotalFinca,@HaEfectiva,@UsoActualSuelo,@CodCliente,@Coordenada_X_UTM,@Coordenada_Y_UTM,
									 @Coordenada_X_GMS,@Coordenada_Y_GMS)
END
