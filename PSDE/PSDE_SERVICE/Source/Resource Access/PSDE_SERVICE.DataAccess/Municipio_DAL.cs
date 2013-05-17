using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace PSDE_SERVICE.DataAccess
{
    public class Municipio_DAL
    {
        static PSDE_DALDataContext cnx = new PSDE_DALDataContext();

        public static int insert(DataContracts.Municipio muni)
        {
            try
            {

                return cnx.MunicipioInsert(muni.Nombre, muni.idDepartamento);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.Municipio muni)
        {
            try
            {
                return cnx.MunicipioUpdate(muni.idMunicipio, muni.Nombre, muni.idDepartamento);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.Municipio muni)
        {
            try
            {
                return cnx.MunicipioDelete(muni.idMunicipio);
            }
            catch (Exception)
            {
                throw;
            }

        }

        public static DataContracts.Municipios listaMunicipios()
        {
            DataContracts.Municipios muni = new DataContracts.Municipios();

            foreach (Municipio item in cnx.Municipio.ToList())
            {
                DataContracts.Municipio munici = new DataContracts.Municipio();
                munici.idDepartamento = item.idDepartamento;
                munici.idMunicipio = item.idMunicipio;
                munici.Nombre = item.Nombre;

                muni.Add(munici);
            }
            return muni;
        }

           
        /*{
            DataContracts.ListaVistaClientes clie = new DataContracts.ListaVistaClientes();

            foreach (VistaClienteLista item in cn.VistaClienteLista.ToList())
            {
                DataContracts.ListaVistaCliente vistaCliente = new DataContracts.ListaVistaCliente();
                vistaCliente.Cliente = item.Nombre;
                vistaCliente.Cedula = item.Cédula;
                vistaCliente.Municipio = item.Municipio;
                vistaCliente.Codigo_Web = item.CódigoWeb;
                vistaCliente.Comarca = item.Comarca;
                vistaCliente.Edad = item.Edad;
                vistaCliente.Sexo = item.Sexo;
                vistaCliente.Telefono = item.Teléfono;
                vistaCliente.IdCliente = item.IdCliente;
                clie.Add(vistaCliente);
            }
            return clie;
        }*/

    }
}
