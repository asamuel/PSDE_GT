
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using WCF = global::System.ServiceModel;

namespace PSDE_SERVICE.MessageContracts
{
	/// <summary>
	/// Service Contract Class - GeneralDetalleRQ
	/// </summary>
	[WCF::MessageContract(IsWrapped = false)] 
	public partial class GeneralDetalleRQ
	{
		private PSDE_SERVICE.DataContracts.GeneralDetalle generalDetalle;
	 		
		[WCF::MessageBodyMember(Namespace = "http://PSDE.Model/2013/PSDE_SC", Name = "GeneralDetalle")]
		public PSDE_SERVICE.DataContracts.GeneralDetalle GeneralDetalle
		{
			get { return generalDetalle; }
			set { generalDetalle = value; }
		}
	}
}

