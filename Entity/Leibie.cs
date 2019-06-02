using System;
using System.Data;
using System.Data.SqlClient;
using Sqldbconn;

namespace Entity
{
	
	public class Leibie
	{
		private sqldbconn dbconn;

		private int leibieid;
		private string leibiename;

		public int Leibieid
		{
			get
			{
				return leibieid;
			}
			set
			{
				leibieid = value;
			}
		}
		public string Leibiename
		{
			get
			{
				return leibiename;
			}
			set
			{
				leibiename = value;
			}
		}


		public Leibie()
		{
			dbconn = new sqldbconn();			
		}
		public DataSet leibie_sel()
		{            
            return dbconn.getdataset("select * from leibie", null);
        }
		public int leibie_add()
		{
			SqlParameter [] para = new SqlParameter[1];
			para[0] = new SqlParameter("@leibiename",SqlDbType.VarChar,20);
			para[0].Value = leibiename;
			return dbconn.updata("insert into leibie(leibiename) values(@leibiename)", para);
		}
		public DataSet fenlei_sel()
		{
			return dbconn.getdataset("select * from fenlei", null);
		}
		public int leibie_del()
		{
			SqlParameter [] para = new SqlParameter[1];
			para[0] = new SqlParameter("@leibieid",SqlDbType.Int);
			para[0].Value = leibieid;
			return dbconn.updata("delete from leibie where leibieid=@leibieid",para);

		}
		public SqlDataReader leibie_name()
		{
			SqlParameter [] para = new SqlParameter[1];
			para[0] = new SqlParameter("@leibieid",SqlDbType.Int);
			para[0].Value = leibieid;
			return dbconn.getread("select * from leibie where leibieid='"+leibieid+"'", para);
		}

		
	

	}
}
