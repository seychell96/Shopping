using System;
using System.Data;
using System.Data.SqlClient;
using Sqldbconn;

namespace Entity
{
	
	public class gongyingshang
	{
		private sqldbconn dbconn;
		private int gysID;
		private string gysname;
		private string gyslinkman;
		private string telephone;			
		private string email;
		private string address;	
		
		#region ÊôÐÔÆ÷
		public gongyingshang()
		{
			dbconn = new sqldbconn();					
		}
		public int GysID
		{
			get
			{
				return  gysID;
			}
			set
			{
				gysID = value;
			}
		}
		public string Gysname
		{
			get
			{
				return  gysname;
			}
			set 
			{
				gysname = value;
			}
		}
	
		public string Gyslinkman
		{
			get
			{
				return  gyslinkman;
			}
			set
			{
				gyslinkman = value;
			}
		}
		public string Telephone
		{
			get
			{
				return  telephone;
			}
			set
			{
				telephone = value;
			}
		}
		public string Email
		{
			get
			{
				return  email;
			}
			set
			{
				email = value;
			}
		}
		public string Address
		{
			get
			{
				return  address;
			}
			set
			{
				address = value;
			}
		}
	
		#endregion

	
		public DataSet gongyingshang_select()
		{
			return dbconn.getdataset("select * from gongyingshang", null);			
		}
		public int gongyingshang_del()
		{
			SqlParameter [] para = new SqlParameter[1];
			para[0] = new SqlParameter("@gysID",SqlDbType.Int);
			para[0].Value = gysID;

			return dbconn.updata("delete from gongyingshang where gysID=@gysID", para);
		}
		public int gongyingshang_insert()
		{			
			SqlParameter [] para = new SqlParameter[5];
			para[0] = new SqlParameter("@gysname",SqlDbType.VarChar,50);
			para[0].Value = gysname;
			para[1] = new SqlParameter("@gyslinkman",SqlDbType.VarChar,10);
			para[1].Value = gyslinkman;
			para[2] = new SqlParameter("@telephone",SqlDbType.VarChar,20);
			para[2].Value = telephone;
			para[3] = new SqlParameter("@email",SqlDbType.VarChar,30);
			para[3].Value = email;
			para[4] = new SqlParameter("@address",SqlDbType.VarChar,80);
			para[4].Value = address;

			return dbconn.updata("insert into gongyingshang(gysname,gyslinkman,telephone,email,address)values(@gysname,@gyslinkman,@telephone,@email,@address)", para);
		}
		public int gongyingshang_modif()
		{
			SqlParameter [] para = new SqlParameter[6];
				
			para[0] = new SqlParameter("@gysID",SqlDbType.Int);
			para[0].Value =gysID;
			para[1] = new SqlParameter("@gysname",SqlDbType.VarChar,50);
			para[1].Value = gysname;
			para[2] = new SqlParameter("@gyslinkman",SqlDbType.VarChar,10);
			para[2].Value = gyslinkman;
			para[3] = new SqlParameter("@telephone",SqlDbType.VarChar,20);
			para[3].Value = telephone;
			para[4] = new SqlParameter("@email",SqlDbType.VarChar,30);
			para[4].Value = email;
			para[5] = new SqlParameter("@address",SqlDbType.VarChar,80);
			para[5].Value = address;

			return dbconn.updata("update gongyingshang set gysname=@gysname,gyslinkman=@gyslinkman,telephone=@telephone,email=@email,address=@address where gysID=@gysID", para);
		}
		public DataSet gongyingshang_gysname()
		{
			return dbconn.getdataset("select gysname from gongyingshang", null);
		}


		

	}
}
