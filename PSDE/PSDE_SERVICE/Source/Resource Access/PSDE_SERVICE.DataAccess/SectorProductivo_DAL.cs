using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace PSDE_SERVICE.DataAccess
{
    public class SectorProductivo_DAL
    {
        static PSDE_DALDataContext cnx = new PSDE_DALDataContext();

        public static int insert(DataContracts.SectorProductivo sp)
        {
            try
            {

                return cnx.SectorProductivoInsert(sp.Nombre);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.SectorProductivo sp)
        {
            try
            {
                return cnx.SectorProductivoUpdate(sp.Id, sp.Nombre);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.SectorProductivo sp)
        {
            try
            {
                return cnx.SectorProductivoDelete(sp.Id);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
