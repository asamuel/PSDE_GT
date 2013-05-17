using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
    public class Indicador_DAL
    {
        static PSDE_DALDataContext cnx = new PSDE_DALDataContext();

        public static int insert(DataContracts.Indicador cu)
        {
            try
            {
                return cnx.insertindicador(cu.NombreIndicador);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.Indicador cu)
        {
            try
            {
                return cnx.updateindicador(cu.IdIndicador, cu.NombreIndicador);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.Indicador cu)
        {
            try
            {
                return cnx.deleteindicador(cu.IdIndicador);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
