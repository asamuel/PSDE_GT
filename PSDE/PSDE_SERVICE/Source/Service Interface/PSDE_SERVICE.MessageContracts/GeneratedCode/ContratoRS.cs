
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
	/// Service Contract Class - ContratoRS
	/// </summary>
	[WCF::MessageContract(IsWrapped = false)] 
	public partial class ContratoRS
	{
		private int responseRS;
	 		
		[WCF::MessageBodyMember(Namespace = "http://PSDE.Model/2013/PSDE_SC", Name = "ResponseRS")]
		public int ResponseRS
		{
			get { return responseRS; }
			set { responseRS = value; }
		}
	}
}

