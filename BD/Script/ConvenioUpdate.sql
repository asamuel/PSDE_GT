USE [ProgramaSDE1]
GO
/****** Object:  StoredProcedure [dbo].[ConvenioUpdate]   Script Date: 03/28/2013 21:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ConvenioUpdate](@IdC int,@FechaInicio datetime,@FechaFinal datetime,@TotalClientes int,@MontoFF float,@MontoP float)
AS
BEGIN 
 
		update  dbo.Convenio set  FechaInicio = @FechaInicio , FechaFinal = @FechaFinal, TotalClientes=@TotalClientes
		,MontoFF=@MontoFF,MontoP=@MontoP where IdC = @IdC 
END