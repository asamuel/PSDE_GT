
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
	/// Service Contract Class - EventoRQ
	/// </summary>
	[WCF::MessageContract(IsWrapped = false)] 
	public partial class EventoRQ
	{
		private PSDE_SERVICE.DataContracts.Evento evento;
	 		
		[WCF::MessageBodyMember(Namespace = "http://PSDE.Model/2013/PSDE_SC", Name = "Evento")]
		public PSDE_SERVICE.DataContracts.Evento Evento
		{
			get { return evento; }
			set { evento = value; }
		}
	}
}

