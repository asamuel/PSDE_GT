using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
    public class DetalleConvenio_DAL
    {
        static PSDE_DALDataContext cn = new PSDE_DALDataContext();

        public static int insert(DataContracts.DetalleConvenio dc)
        {
            try
            {
                return cn.DetalleConvenioInsert(dc.CodConvenio, dc.CodFuenteF, dc.CodProducto, dc.NumeroClientes, dc.InversionCliente);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.DetalleConvenio dc)
        {
            try
            {
                return cn.DetalleConvenioUpdate(dc.IdDC, dc.CodConvenio, dc.CodFuenteF, dc.CodProducto, dc.NumeroClientes, dc.InversionCliente);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.DetalleConvenio dc)
        {
            try
            {
                return cn.DetalleConvenioDelete(dc.IdDC);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
