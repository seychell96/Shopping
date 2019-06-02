using System;
using System.Data;
using System.Data.SqlClient;
using Sqldbconn;

namespace Entity
{
	public class users
	{
		private sqldbconn dbconn;
		private int userid;
		private string useradmin;
		private string userpassword;
		private string username;
		private string useremail;
		private string usershengfen;
		private string usertelphone;
		private string usershouji;
		private string useraddress;
		private string newpassword;

		#region ÊôÐÔÆ÷
		public int	Userid
		{
			get
			{
				return userid;
			}
			set 
			{
				userid = value;
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
		public string	Userpassword
		{
			get
			{
				return userpassword;
			}
			set 
			{
				userpassword = value;
			}
		}
		public string	Username
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
		public string	Useremail
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
		public string	Usershengfen
		{
			get
			{
				return usershengfen;
			}
			set 
			{
				usershengfen = value;
			}
		}
		public string	Usertelphone
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
		public string	Usershouji
		{
			get
			{
				return usershouji;
			}
			set 
			{
				usershouji = value;
			}
		}

		public string	Useraddress
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
		public string	Newpassword
		{
			get
			{
				return newpassword;
			}
			set 
			{
				newpassword = value;
			}
		}




		#endregion
			

		public users()
		{
			dbconn = new sqldbconn();
			
		}

		public int users_add()
		{
			SqlParameter [] para = new SqlParameter[8];
			para[0] = new SqlParameter("@useradmin",SqlDbType.VarChar,20);
			para[0].Value = useradmin;
			para[1] = new SqlParameter("@userpassword",SqlDbType.VarChar,40);
			para[1].Value = userpassword;
			para[2] = new SqlParameter("@username",SqlDbType.VarChar,20);
			para[2].Value = username;			
			para[3] = new SqlParameter("@useremail",SqlDbType.VarChar,30);
			para[3].Value = useremail;			
			para[4] = new SqlParameter("@usershengfen",SqlDbType.VarChar,20);
			para[4].Value = usershengfen;			
			para[5] = new SqlParameter("@usertelphone",SqlDbType.VarChar,15);
			para[5].Value = usertelphone;			
			para[6] = new SqlParameter("@usershouji",SqlDbType.VarChar,15);
			para[6].Value = usershouji;			
			para[7] = new SqlParameter("@useraddress",SqlDbType.VarChar,50);
			para[7].Value = useraddress;			
			return 	dbconn.updata("insert into users(useradmin,userpassword,username,useremail,usershengfen,usertelphone,usershouji,useraddress) values(@useradmin,@userpassword,@username,@useremail,@usershengfen,@usertelphone,@usershouji,@useraddress)", para);			
		}
		public SqlDataReader users_denlu()
		{
			SqlParameter [] para = new SqlParameter[2];
			para[0] = new SqlParameter("@useradmin",SqlDbType.VarChar,20);
			para[0].Value = useradmin;
			para[1] = new SqlParameter("@userpassword",SqlDbType.VarChar,40);
			para[1].Value = userpassword;
			return dbconn.getread("select * from users where useradmin='"+useradmin+ "' and userpassword='"+ userpassword+"'", para);

		}
		
		public int users_del()
		{
			SqlParameter [] para = new SqlParameter[1];
			para[0] = new SqlParameter("@userid",SqlDbType.VarChar,20);
			para[0].Value = userid;
			return dbconn.updata("delete from users where userid=@userid",para);
		}
		public DataSet users_sel()
		{
			return dbconn.getdataset("select * from users", null);
		}

		public int users_update()
		{
			SqlParameter [] para = new SqlParameter[3];
			para[0] = new SqlParameter("@useradmin",SqlDbType.VarChar,20);
			para[0].Value = useradmin;
			para[1] = new SqlParameter("@userpassword",SqlDbType.VarChar,40);
			para[1].Value = userpassword;
			para[2] = new SqlParameter("@newpassword",SqlDbType.VarChar,40);
			para[2].Value = newpassword;
			
            return dbconn.updata("update users set userpassword=@userpassword where useradmin=@useradmin", para);			

		}

	}
}
