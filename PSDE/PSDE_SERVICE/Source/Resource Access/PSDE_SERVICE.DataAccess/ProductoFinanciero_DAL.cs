using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace PSDE_SERVICE.DataAccess
{
    public class ProductoFinanciero_DAL
    {
        static PSDE_DALDataContext cnx = new PSDE_DALDataContext();

        public static int insert(DataContracts.ProductoFinanciero pf)
        {
            try
            {

                return cnx.ProductoFinancieroInsert(pf.Nombre);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.ProductoFinanciero pf)
        {
            try
            {
                return cnx.ProductoFinancieroUpdate(pf.IdProducto, pf.Nombre);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.ProductoFinanciero pf)
        {
            try
            {
                return cnx.ProductoFinancieroDelete(pf.IdProducto);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
