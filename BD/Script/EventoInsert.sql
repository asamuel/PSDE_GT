USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[EventoInsert]    Script Date: 03/28/2013 19:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EventoInsert](@CodTipoEvento int, @TituloEvento varchar(20))
AS
BEGIN 
 
		insert into dbo.Eventos values(@CodTipoEvento,@TituloEvento)
END
