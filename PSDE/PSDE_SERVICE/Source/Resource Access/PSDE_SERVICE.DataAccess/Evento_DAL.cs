using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSDE_SERVICE.DataAccess
{
   public  class Evento_DAL
    {
        static PSDE_DALDataContext cn = new PSDE_DALDataContext();

        public static int insert(DataContracts.Evento even)
        {
            try
            {
                return cn.EventoInsert(even.CodTipoEvento, even.TituloEvento);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static int update(DataContracts.Evento even)
        {
            try
            {
                return cn.EventoUpdate(even.IdEvento, even.CodTipoEvento, even.TituloEvento);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int delete(DataContracts.Evento even)
        {
            try
            {
                return cn.EventoDelete(even.IdEvento);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static DataContracts.ListaVistaEventos CargarEventos()
        {
            DataContracts.ListaVistaEventos eve = new DataContracts.ListaVistaEventos();
            foreach (VistaEventos item in cn.VistaEventos.ToList())
            {
                DataContracts.ListaVistaEvento Eventos = new DataContracts.ListaVistaEvento();
                Eventos.Apellido = item.Apellido;
                Eventos.Estado = item.Estado;
                Eventos.EventosEjecutados = Convert.ToInt32(item.Eventos_Ejecutados);
                Eventos.EvetnosPactados = Convert.ToInt32(item.Eventos_Pactados);
                Eventos.FechaFin = Convert.ToDateTime(item.Fecha_Fin);
                Eventos.FechaInicio = Convert.ToDateTime(item.Fecha_Inicio);
                Eventos.Nombre = item.Nombre;
                Eventos.Otros = item.Otros;
                Eventos.TipoDeEvento = item.Tipo_de_Evento;
                Eventos.TituloDelEvento = item.Titulo_del_Evento;
                eve.Add(Eventos);
            }
            return eve;
        }

    }
}
