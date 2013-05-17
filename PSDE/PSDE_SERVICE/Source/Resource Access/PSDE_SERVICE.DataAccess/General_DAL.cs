using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
    public class General_DAL
    {
        static PSDE_DALDataContext cnx = new PSDE_DALDataContext();

        public static int insert(DataContracts.General gral)
        {
            try
            {
                return cnx.GeneralInsert(gral.IdEvento, gral.IdContrato, gral.EventosPactados,
                                                gral.EventosEjecutados, gral.FechaInicio, gral.FechaFin, gral.Estado, gral.Otros);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int update(DataContracts.General gral)
        {
            try
            {
                return cnx.GeneralUpdate(gral.Id, gral.IdEvento, gral.IdContrato, gral.EventosPactados,
                                                gral.EventosEjecutados, gral.FechaInicio, gral.FechaFin, gral.Estado, gral.Otros);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.General gral)
        {
            try
            {
                return cnx.GeneralDelete(gral.Id);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
