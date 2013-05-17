using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
    public class Hisotial_DAL
    {
        static PSDE_DALDataContext cnx = new PSDE_DALDataContext();

        public static int insert(DataContracts.Historial hs)
        {
            try
            {
                return cnx.HistorialInsert(hs.FechaInicio, hs.FechaFin, hs.IdUsuario);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.Historial hs)
        {
            try
            {
                return cnx.HistorialUpdate(hs.Id, hs.FechaInicio, hs.FechaFin, hs.IdUsuario);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.Historial hs)
        {
            try
            {
                return cnx.HistorialDelete(hs.Id);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
