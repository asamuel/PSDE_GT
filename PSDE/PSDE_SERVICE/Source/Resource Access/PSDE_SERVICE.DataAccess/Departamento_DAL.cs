using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
   public class Departamento_DAL
   {
       static PSDE_DALDataContext cnx = new PSDE_DALDataContext();

       public static int insert(DataContracts.Departamento dp)
       {
           try
           {

               return cnx.insertDepartamento(dp.Nombre);
           }
           catch (Exception)
           {
               
               throw;
           } 
       }

       public static int update(DataContracts.Departamento dp)
       {
           try
           {
               return cnx.updateDepartamento(dp.idDepartamento, dp.Nombre);
           }
           catch (Exception)
           {
               throw;
           }
       }

       public static int delete(DataContracts.Departamento dp)
       {
           try
           {
               return cnx.deleteDepartamento(dp.idDepartamento);
           }
           catch (Exception)
           {
               throw;
           }
       }

   }
}
