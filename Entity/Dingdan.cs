using System;
using System.Data;
using System.Data.SqlClient;
using Sqldbconn;

namespace Entity
{
	
	public class Dingdan
	{
		#region  Ù–‘∑Ω∑®
		private sqldbconn dbconn;

		private int dingdanid;
		private string useradmin;
		private int shangpingid;
		private int quantity;
		private decimal totalprice;
		private string username;
		private string usertelphone;
		private string useraddress;
		private string dingdanbeizhu;
		
		public int Dingdanid
		{
			get
			{
				return dingdanid;
			}
			set
			{
				dingdanid = value;
			}
		}
		public string Useradmin
		{
			get
			{
				return useradmin;
			}
			set
			{
				useradmin = value;
			}
		}
		public int Shangpingid
		{
			get
			{
				return shangpingid;
			}
			set
			{
				shangpingid = value;
			}
		}
		public int Quantity
		{
			get
			{
				return quantity;
			}
			set
			{
				quantity = value;
			}
		}
		public decimal Totalprice
		{
			get
			{
				return totalprice;
			}
			set
			{
				totalprice = value;
			}
		}
		public string Username
		{
			get
			{
				return username;
			}
			set
			{
				username = value;
			}
		}
		public string Usertelphone
		{
			get
			{
				return usertelphone;
			}
			set
			{
				usertelphone = value;
			}
		}
		public string Useraddress
		{
			get
			{
				return useraddress;
			}
			set
			{
				useraddress = value;
			}
		}
		public string Dingdanbeizhu
		{
			get
			{
				return dingdanbeizhu;
			}
			set
			{
				dingdanbeizhu = value;
			}
		}

		#endregion
	
		public Dingdan()
		{
			dbconn= new sqldbconn();
		}
		public void dingdan_add()
		{
			SqlParameter [] para = new SqlParameter[8];
			para[0] = new SqlParameter("@useradmin",SqlDbType.VarChar,20);
			para[0].Value= useradmin;
			para[1] = new SqlParameter("@shangpingid",SqlDbType.Int);
			para[1].Value= shangpingid;
			para[2] = new SqlParameter("@quantity",SqlDbType.Int);
			para[2].Value= quantity;
			para[3] = new SqlParameter("@totalprice",SqlDbType.Decimal,12);
			para[3].Value= totalprice;
			para[4] = new SqlParameter("@username",SqlDbType.VarChar,20);
			para[4].Value= username;
			para[5] = new SqlParameter("@usertelphone",SqlDbType.VarChar,15);
			para[5].Value= usertelphone;
			para[6] = new SqlParameter("@useraddress",SqlDbType.VarChar,50);
			para[6].Value= useraddress;
			para[7] = new SqlParameter("@dingdanbeizhu",SqlDbType.VarChar,50);
			para[7].Value= dingdanbeizhu;

			dbconn.updata("insert into dingdan(useradmin,shangpingid,quantity,totalprice,username,usertelphone,useraddress,dingdanbeizhu) values(@useradmin,@shangpingid,@quantity,@totalprice,@username,@usertelphone,@useraddress,@dingdanbeizhu)", para);

		}
		public DataSet dingdan_sel()
		{
			return dbconn.getdataset("select * from dingdan where dingdanshenhe='1'", null);
		}
		public DataSet dingdan_sh_sel()
		{
			return dbconn.getdataset("select * from dingdan where dingdanshenhe='0'",null);
		}

		public int dingdan_del()
		{	
			SqlParameter [] para = new SqlParameter[1];
			para[0] = new SqlParameter("@dingdanid",SqlDbType.Int);
			para[0].Value= dingdanid;
			return dbconn.updata("delete from dingdan where dingdanid=@dingdanid",para);
		}
		public int dingdan_update()
		{
			SqlParameter [] para = new SqlParameter[3];
			para[0] = new SqlParameter("@dingdanid",SqlDbType.Int);
			para[0].Value= dingdanid;
			para[1] = new SqlParameter("@shangpingid",SqlDbType.Int);
			para[1].Value= shangpingid;
			para[2] = new SqlParameter("@quantity",SqlDbType.Int);
			para[2].Value= quantity;
		    return dbconn.updata("update dingdan set dingdanshenhe=1 where dingdanid=@dingdanid and shangpingid=@shangpingid and quantity=@quantity", para);
		}
			
		

	}
}
