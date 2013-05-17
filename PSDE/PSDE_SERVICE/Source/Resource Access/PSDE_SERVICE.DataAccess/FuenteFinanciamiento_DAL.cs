using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
    public class FuenteFinanciamiento_DAL
    {
        static PSDE_DALDataContext cnx = new PSDE_DALDataContext();

        public static int insert(DataContracts.FuenteFinanciamiento cu)
        {
            try
            {
                return cnx.insertfuentefinanciamiento(cu.Nombre);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.FuenteFinanciamiento cu)
        {
            try
            {
                return cnx.updatefuentefinanciamiento(cu.idFF, cu.Nombre);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.FuenteFinanciamiento cu)
        {
            try
            {
                return cnx.deletefuentefinanciamiento(cu.idFF);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
