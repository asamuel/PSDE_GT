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
                return cnx.FincaInsert(fin.HaTotalFinca, fin.HaEfectiva, fin.UsoActualSuelo, fin.CodCliente, fin.Coordenada_X_GMS,fin.Coordenada_X_UTM,fin.Coordenada_Y_GMS,fin.Coordenada_Y_UTM);
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
                return cnx.FincaUpdate(fin.IdFinca, fin.HaTotalFinca, fin.HaEfectiva, fin.UsoActualSuelo, fin.CodCliente, fin.Coordenada_X_GMS, fin.Coordenada_X_UTM, fin.Coordenada_Y_GMS, fin.Coordenada_Y_UTM);
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

        public static DataContracts.ListaVistaFincas CargarFincas()
        {
            DataContracts.ListaVistaFincas finca = new DataContracts.ListaVistaFincas();

            foreach (VistaFincaLista item in cnx.VistaFincaLista.ToList())
            {
                DataContracts.ListaVistaFinca vf = new DataContracts.ListaVistaFinca();
                vf.IdFinca = item.IdFinca;
                vf.Cliente = item.Cliente;
                vf.HaTotalFinca = item.HaTotalFinca;
                vf.HaEfectiva = item.HaEfectiva;
                vf.UsoActualSuelo = item.UsoActualSuelo;
                vf.Coordenada_X_UTM = item.Coordenada_X_UTM;
                vf.Coordenada_Y_UTM = item.Coordenada_Y_UTM;
                vf.Coordenada_X_GMS = item.Coordenada_X_GMS;
                vf.Coordenada_Y_GMS = item.Coordenada_Y_GMS;
                finca.Add(vf);
            }
            return finca;
        }

    }
}
