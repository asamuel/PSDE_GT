
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
	/// Service Contract Class - UsuarioRS
	/// </summary>
	[WCF::MessageContract(IsWrapped = false)] 
	public partial class UsuarioRS
	{
		private int responseRs;
	 		
		[WCF::MessageBodyMember(Namespace = "http://PSDE.Model/2013/PSDE_SC", Name = "ResponseRs")]
		public int ResponseRs
		{
			get { return responseRs; }
			set { responseRs = value; }
		}
	}
}

