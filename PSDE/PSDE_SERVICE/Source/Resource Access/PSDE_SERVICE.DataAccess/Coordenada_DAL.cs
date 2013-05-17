using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
   public class Coordenada_DAL
    {
        static PSDE_DALDataContext cn = new PSDE_DALDataContext();

        public static int insert(DataContracts.Coordenada coo)
        {
            try
            {
                return cn.CoordenadaInsert(coo.Coordenada_X_UTM, coo.Coordenada_Y_UTM, coo.Coordenada_Y_GMS, coo.Coordenada_X_GMS);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.Coordenada coo)
        {
            try
            {
                return cn.CoordenaUpdate(coo.IdCoordenada, coo.Coordenada_X_UTM, coo.Coordenada_Y_UTM, coo.Coordenada_Y_GMS, coo.Coordenada_X_GMS);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.Coordenada coo)
        {
            try
            {
                return cn.CoordenadasDelete(coo.IdCoordenada);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
