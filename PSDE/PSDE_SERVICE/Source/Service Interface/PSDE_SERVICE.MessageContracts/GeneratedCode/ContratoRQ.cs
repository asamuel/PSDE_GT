
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
	/// Service Contract Class - ContratoRQ
	/// </summary>
	[WCF::MessageContract(IsWrapped = false)] 
	public partial class ContratoRQ
	{
		private PSDE_SERVICE.DataContracts.Contrato contrato;
	 		
		[WCF::MessageBodyMember(Namespace = "http://PSDE.Model/2013/PSDE_SC", Name = "Contrato")]
		public PSDE_SERVICE.DataContracts.Contrato Contrato
		{
			get { return contrato; }
			set { contrato = value; }
		}
	}
}

