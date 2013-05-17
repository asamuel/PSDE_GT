using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
    public class Finca_DAL
    {
        static PSDE_DALDataContext cnx = new PSDE_DALDataContext();

        public static int insert(DataContracts.Finca fin)
        {
            try
            {
                return cnx.FincaInsert(fin.HaTotalFinca, fin.HaEfectiva, fin.UsoActualSuelo, fin.CodCliente, fin.CodCoordenada);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.Finca fin)
        {
            try
            {
                return cnx.FincaUpdate(fin.IdFinca, fin.HaTotalFinca, fin.HaEfectiva,fin.UsoActualSuelo,fin.CodCliente,fin.CodCoordenada);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.Finca fin)
        {
            try
            {
                return cnx.FincaDelete(fin.IdFinca);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
