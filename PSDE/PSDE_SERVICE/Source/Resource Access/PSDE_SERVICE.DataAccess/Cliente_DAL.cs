using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace PSDE_SERVICE.DataAccess
{
    public class Cliente_DAL
    {
        static PSDE_DALDataContext cn = new PSDE_DALDataContext();

        public static int insert(DataContracts.Cliente cli)
        {
            try
            {
                return cn.ClienteInsert(cli.Nombre, cli.Apellido, cli.Sexo, cli.Cedula, cli.Edad, cli.Telefono, cli.Direccion, cli.Comarca, cli.CodWeb, cli.CodMunicipio);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.Cliente cli)
        {
            try
            {
                return cn.ClienteUpdate(cli.IdCliente, cli.Nombre, cli.Apellido, cli.Sexo, cli.Cedula, cli.Edad, cli.Telefono, cli.Direccion, cli.Comarca, cli.CodWeb, cli.CodMunicipio);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.Cliente cli)
        {
            try
            {
                return cn.ClienteDelete(cli.IdCliente);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static DataContracts.ListaVistaClientes CargarClientes()
        {
            DataContracts.ListaVistaClientes clie = new DataContracts.ListaVistaClientes();

            foreach (VistaClienteLista item in cn.VistaClienteLista.ToList())
            {
                DataContracts.ListaVistaCliente vistaCliente = new DataContracts.ListaVistaCliente();
                vistaCliente.Nombre = item.Nombre;
                vistaCliente.Apellido = item.Apellido;
                vistaCliente.Cedula = item.Cédula;
                vistaCliente.Municipio = item.Municipio;
                vistaCliente.Codigo_Web = item.Código_Web;
                vistaCliente.Comarca = item.Comarca;
                vistaCliente.Edad = item.Edad;
                vistaCliente.Genero = item.Género;
                vistaCliente.Telefono = item.Teléfono;
                vistaCliente.IdCliente = item.IdCliente;
                vistaCliente.Direccion = item.Dirección;
                clie.Add(vistaCliente);
            }
            return clie;
        }

        //public static List<VistaClienteLista> CargarClientes() 
        //{


            //DataSet dts = new DataSet();
            //DataTable table = new DataTable("Cliente");
            //table.Columns.Add("Cédula", typeof(string));
            //table.Columns.Add("CódigoWeb", typeof(string));
            //table.Columns.Add("Comarca", typeof(string));
            //table.Columns.Add("Dirección", typeof(string));
            //table.Columns.Add("Edad", typeof(int));
            //table.Columns.Add("IdCliente", typeof(int));
            //table.Columns.Add("Municipio", typeof(string));
            //table.Columns.Add("Nombre", typeof(string));
            //table.Columns.Add("Sexo", typeof(bool));
            //table.Columns.Add("Teléfono", typeof(string));
            //foreach (VistaClienteLista item in cn.VistaClienteLista.ToList())
            //{
            //    DataRow row = table.NewRow();
            //    row["Cédula"] = item.Cédula;
            //    row["CódigoWeb"] = item.CódigoWeb;
            //    row["Comarca"] = item.Comarca;
            //    row["Dirección"] = item.Dirección;
            //    row["Edad"] = item.Edad;
            //    row["IdCliente"] = item.IdCliente;
            //    row["Municipio"] = item.Municipio;
            //    row["Nombre"] = item.Nombre;
            //    row["Sexo"] = item.Sexo;
            //    row["Teléfono"] = item.Teléfono;
            //    table.Rows.Add(row);
            //}
            //dts.Tables.Add(table);
            //return dts;
        //}
    }
}
