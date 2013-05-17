//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using WcfSerialization = global::System.Runtime.Serialization;

namespace PSDE_SERVICE.DataContracts
{
	/// <summary>
	/// Data Contract Class - General
	/// </summary>	
	[WcfSerialization::DataContract(Namespace = "http://PSDE.Model/2013/PSDE_DC", Name = "General")]
	public partial class General 
	{
		private int id;
		private int idEvento;
		private int idContrato;
		private int eventosPactados;
		private int eventosEjecutados;
		private System.DateTime fechaInicio;
		private System.DateTime fechaFin;
		private string estado;
		private string otros;
		
		[WcfSerialization::DataMember(Name = "Id", IsRequired = false, Order = 0)]
		public int Id
		{
		  get { return id; }
		  set { id = value; }
		}				
		
		[WcfSerialization::DataMember(Name = "IdEvento", IsRequired = false, Order = 1)]
		public int IdEvento
		{
		  get { return idEvento; }
		  set { idEvento = value; }
		}				
		
		[WcfSerialization::DataMember(Name = "IdContrato", IsRequired = false, Order = 2)]
		public int IdContrato
		{
		  get { return idContrato; }
		  set { idContrato = value; }
		}				
		
		[WcfSerialization::DataMember(Name = "EventosPactados", IsRequired = false, Order = 3)]
		public int EventosPactados
		{
		  get { return eventosPactados; }
		  set { eventosPactados = value; }
		}				
		
		[WcfSerialization::DataMember(Name = "EventosEjecutados", IsRequired = false, Order = 4)]
		public int EventosEjecutados
		{
		  get { return eventosEjecutados; }
		  set { eventosEjecutados = value; }
		}				
		
		[WcfSerialization::DataMember(Name = "FechaInicio", IsRequired = false, Order = 5)]
		public System.DateTime FechaInicio
		{
		  get { return fechaInicio; }
		  set { fechaInicio = value; }
		}				
		
		[WcfSerialization::DataMember(Name = "FechaFin", IsRequired = false, Order = 6)]
		public System.DateTime FechaFin
		{
		  get { return fechaFin; }
		  set { fechaFin = value; }
		}				
		
		[WcfSerialization::DataMember(Name = "Estado", IsRequired = false, Order = 7)]
		public string Estado
		{
		  get { return estado; }
		  set { estado = value; }
		}				
		
		[WcfSerialization::DataMember(Name = "Otros", IsRequired = false, Order = 8)]
		public string Otros
		{
		  get { return otros; }
		  set { otros = value; }
		}				
	}
}

