using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
    public class Sucursal_DAL
    {
        static PSDE_DALDataContext cnx = new PSDE_DALDataContext();

        public static int insert(DataContracts.Sucursal cu)
        {
            try
            {
                return cnx.SucursalInsert(cu.Nombre, cu.responsable, cu.idMunicipio, cu.telefono); 
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.Sucursal cu)
        {
            try
            {
                return cnx.SucursalUpdate(cu.IdSucursal,cu.Nombre, cu.responsable, cu.idMunicipio, cu.telefono);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.Sucursal cu)
        {
            try
            {
                return cnx.SucursalDelete(cu.IdSucursal);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
