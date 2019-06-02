using System;
using System.Web;


namespace Entity
{
	public class Jiami
	{				
		public Jiami()
		{			
		}

		public string password(string password)
		{
			return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(password,"sha1");

		}
	
	}
}
