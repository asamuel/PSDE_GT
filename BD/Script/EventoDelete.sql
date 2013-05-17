USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[EventoDelete]    Script Date: 03/28/2013 19:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EventoDelete](@Id int)
AS
BEGIN 
		delete dbo.Eventos where IdEvento = @Id 
END
