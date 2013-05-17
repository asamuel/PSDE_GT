using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
    public class GeneralDetalle_DAL
    {
        static PSDE_DALDataContext cnx = new PSDE_DALDataContext();

       public static int insert(DataContracts.GeneralDetalle cu)
        {
            try
            {
                return cnx.GeneralDetalleInsert(cu.IdIndicador, cu.AvanceCuantitativo, cu.CodEvento, cu.Fecha);
            }
            catch (Exception)
            {
                throw;
            }
        }

       public static int update(DataContracts.GeneralDetalle cu)
       {
           try
           {
               return cnx.GeneralDetalleUpdate(cu.Id, cu.IdIndicador, cu.AvanceCuantitativo, cu.CodEvento, cu.Fecha);
           }
           catch (Exception)
           {
               throw;
           }
       }

       public static int delete(DataContracts.GeneralDetalle cu)
       {
           try
           {
               return cnx.GeneralDetalleDelete(cu.Id);
           }
           catch (Exception)
           {
               throw;
           }
       }
    }
}
