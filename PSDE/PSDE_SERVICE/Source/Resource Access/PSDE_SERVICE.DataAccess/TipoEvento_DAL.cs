using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
  public  class TipoEvento_DAL
    {
        static PSDE_DALDataContext cn = new PSDE_DALDataContext();

        public static int insert(DataContracts.TipoEvento te)
        {
            try
            {
                return cn.TipoEventoInsert(te.Evento);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.TipoEvento te)
        {
            try
            {
                return cn.TipoEventoUpdate(te.IdTipoEvento, te.Evento);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.TipoEvento te)
        {
            try
            {
                return cn.TipoEventoDelete(te.IdTipoEvento);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
