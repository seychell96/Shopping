using System;
using System.Data;
using System.Data.SqlClient;
using Sqldbconn;

namespace Entity
{
	
	public class Liuyanban
	{
		private sqldbconn dbconn;
		private int lybid;
		private string username;
		private string useremail;
		private string lybcontent;

		public int Lybid
		{
			get
			{
				return lybid;
			}
			set
			{
				lybid = value;
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
		public string Useremail
		{
			get
			{
				return useremail;
			}
			set
			{
				useremail = value;
			}
		}
		public string Lybcontent
		{
			get
			{
				return lybcontent;
			}
			set
			{
				lybcontent = value;
			}
		}

		
		public Liuyanban()
		{
			dbconn = new sqldbconn();			
		}
		
		public int userliuyanban_add()
		{
			SqlParameter[] para = new SqlParameter[3];
			para[0] = new SqlParameter("@username",SqlDbType.VarChar,30);
			para[0].Value = username;
			para[1] = new SqlParameter("@useremail",SqlDbType.VarChar,30);
			para[1].Value = useremail;
			para[2] = new SqlParameter("@lybcontent",SqlDbType.NText);
			para[2].Value = lybcontent;
			return dbconn.updata("insert into userliuyanban(username,useremail,lybcontent) values(@username,@useremail,@lybcontent)", para);
		}
		public DataSet userliuyanban_sel_top10()
		{
			return dbconn.getdataset("select top 10 * from userliuyanban ", null);
		}
		public DataSet userliuyanban_sel()
		{
			return dbconn.getdataset("select * from userliuyanban", null);
		}
		public int userliuyanban_del()
		{
			SqlParameter[] para = new SqlParameter[1];
			para[0] = new SqlParameter("@lybid",SqlDbType.Int);
			para[0].Value = lybid;
			return dbconn.updata("delete from userliuyanban where lybid=@lybid", para);
		}

		public SqlDataReader userliuyanban_lybcontent()
		{
			SqlParameter[] para = new SqlParameter[1];
			para[0] = new SqlParameter("@lybid",SqlDbType.Int);
			para[0].Value = lybid;
			return dbconn.getread("select lybcontent from userliuyanban where lybid='"+lybid+"'", para);
		}
	
	}
}
