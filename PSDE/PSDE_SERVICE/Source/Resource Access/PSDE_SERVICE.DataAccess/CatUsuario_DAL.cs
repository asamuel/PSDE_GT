using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
   public class CatUsuario_DAL
   {
       static PSDE_DALDataContext cnx = new PSDE_DALDataContext();

       public static int insert(DataContracts.CategoriaUsuario cu) 
       {
           try
           {
               return cnx.insertcategoriausuario(cu.Nombre,cu.Descripcion);
           }
           catch (Exception)
           {
               
               throw;
           } 
       }

       public static int update(DataContracts.CategoriaUsuario cu)
       {
           try
           {
               return cnx.updatecategoriausuario(cu.IdCategoria, cu.Nombre, cu.Descripcion);
           }
           catch (Exception)
           {
               throw;
           }
       }

       public static int delete(DataContracts.CategoriaUsuario cu)
       {
           try
           {
               return cnx.deletecategoriausuario(cu.IdCategoria);
           }
           catch (Exception)
           {
               throw;
           }
       }

       public static DataContracts.CategoriasUsuarios CargarCategorias()
       {
           DataContracts.CategoriasUsuarios cat = new DataContracts.CategoriasUsuarios();
           foreach (CategoriaUsuario item in cnx.CategoriaUsuario.ToList())
           {
               DataContracts.CategoriaUsuario CatUser = new DataContracts.CategoriaUsuario();
               CatUser.IdCategoria = item.IdCategoria;
               CatUser.Nombre = item.Nombre;
               CatUser.Descripcion = item.Descripcion;
               cat.Add(CatUser);
           }
           return cat;
       }

   }
}
