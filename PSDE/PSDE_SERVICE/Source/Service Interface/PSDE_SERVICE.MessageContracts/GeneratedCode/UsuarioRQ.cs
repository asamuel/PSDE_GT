
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
	/// Service Contract Class - UsuarioRQ
	/// </summary>
	[WCF::MessageContract(IsWrapped = false)] 
	public partial class UsuarioRQ
	{
		private PSDE_SERVICE.DataContracts.Usuario usuario;
	 		
		[WCF::MessageBodyMember(Namespace = "http://PSDE.Model/2013/PSDE_SC", Name = "Usuario")]
		public PSDE_SERVICE.DataContracts.Usuario Usuario
		{
			get { return usuario; }
			set { usuario = value; }
		}
	}
}

