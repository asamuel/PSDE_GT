USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[ConvenioInsert]    Script Date: 03/28/2013 21:09:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>IdC
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ConvenioInsert](@FechaInicio datetime,@FechaFinal datetime,@TotalClientes int,@MontoFF float,@MontoP float)
AS
BEGIN 
 
		insert into dbo.Convenio values(@FechaInicio,@FechaFinal,@TotalClientes,@MontoFF,@MontoP)
END
