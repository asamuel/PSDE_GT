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
	/// Data Contract Class - SectorProductivo
	/// </summary>	
	[WcfSerialization::DataContract(Namespace = "http://PSDE.Model/2013/PSDE_DC", Name = "SectorProductivo")]
	public partial class SectorProductivo 
	{
		private int id;
		private string nombre;
		
		[WcfSerialization::DataMember(Name = "Id", IsRequired = false, Order = 0)]
		public int Id
		{
		  get { return id; }
		  set { id = value; }
		}				
		
		[WcfSerialization::DataMember(Name = "Nombre", IsRequired = false, Order = 1)]
		public string Nombre
		{
		  get { return nombre; }
		  set { nombre = value; }
		}				
	}
}

