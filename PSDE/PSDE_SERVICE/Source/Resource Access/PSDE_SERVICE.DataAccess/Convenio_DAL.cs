using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
   public class Convenio_DAL
    {
        static PSDE_DALDataContext cn = new PSDE_DALDataContext();

        public static int insert(DataContracts.Convenio con)
        {
            try
            {
                return cn.ConvenioInsert(con.FechaInicio, con.FechaFinal, con.TotalClientes, con.MontoFF, con.MontoP);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.Convenio con)
        {
            try
            {
                return cn.ConvenioUpdate(con.IdC,con.FechaInicio, con.FechaFinal, con.TotalClientes, con.MontoFF, con.MontoP);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.Convenio con)
        {
            try
            {
                return cn.ConvenioDelete(con.IdC);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
