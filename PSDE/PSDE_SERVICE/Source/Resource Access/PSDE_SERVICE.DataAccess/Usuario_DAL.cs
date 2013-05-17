using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
    public class Usuario_DAL
    {
        static PSDE_DALDataContext cn = new PSDE_DALDataContext();

        public static int insert(DataContracts.Usuario usu)
        {
            try
            {
                return cn.UuarioInsert(usu.CodCategoriaUsuario, usu.Nombre, usu.Apellido,
                    usu.Telefono, usu.Direccion, usu.Celular, usu.Cedula, usu.Responsable);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.Usuario usu)
        {
            try
            {
                return cn.UsuarioUpdate(usu.IdUsuario, usu.CodCategoriaUsuario, usu.Nombre, usu.Apellido,
                    usu.Telefono, usu.Direccion, usu.Celular, usu.Cedula, usu.Responsable);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.Usuario usu)
        {
            try
            {
                return cn.UsuarioDelete(usu.IdUsuario);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static DataContracts.ListaVistaUsuarios CargarUsuarios()
        {
            DataContracts.ListaVistaUsuarios user = new DataContracts.ListaVistaUsuarios();
            foreach (VistaUsuarioLista item in cn.VistaUsuarioLista.ToList())
            {
                DataContracts.ListaVistaUsuario VistaUsuario = new DataContracts.ListaVistaUsuario();
                VistaUsuario.IdUsuario = item.IdUsuario;
                VistaUsuario.Nombre = item.Nombre;
                VistaUsuario.Apellido = item.Apellido;
                VistaUsuario.Direccion = item.Direccion;
                VistaUsuario.Celular = item.Celular;
                VistaUsuario.Cedula = item.Cedula;
                VistaUsuario.Responsable = Convert.ToString(item.Responsable);
                VistaUsuario.Categoria = item.Categoria;
                user.Add(VistaUsuario);
            }
            return user;
        
        }

    }
}
