USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[EventoUpdate]    Script Date: 03/28/2013 20:00:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EventoUpdate](@Id int,@CodTipoEvento int,@TituloEvento varchar(20))
AS
BEGIN 
 
		update dbo.Eventos set CodTipoEvento = @CodTipoEvento , TituloEvento = @TituloEvento where IdEvento = @Id 
END
