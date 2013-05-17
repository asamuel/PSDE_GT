using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
   public class Contrato_DAL
    {
        static PSDE_DALDataContext cn = new PSDE_DALDataContext();

        public static int insert(DataContracts.Contrato cont)
        {
            try
            {
                return cn.ContratoInsert(cont.CodContrato, cont.CodCliente, cont.CodUsuario, cont.CodSucursal, cont.CodConvenio, cont.CodSectorProductivo
                    , cont.CodProductoFinanciero, cont.MontoOtorgado, cont.FechaDesembolso);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.Contrato cont)
        {
            try
            {
                return cn.ContratoUpdate(cont.IdContrato,cont.CodContrato, cont.CodCliente, cont.CodUsuario, cont.CodSucursal, cont.CodConvenio, cont.CodSectorProductivo
                    , cont.CodProductoFinanciero, cont.MontoOtorgado, cont.FechaDesembolso);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.Contrato cont)
        {
            try
            {
                return cn.ContratoDelete(cont.IdContrato);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
