using System;
using System.Data;
using System.Data.SqlClient;

namespace Sqldbconn
{	
	public class sqldbconn
	{
		private string connstr;
		private SqlConnection conn;
		public sqldbconn()
		{
			connstr = System.Configuration.ConfigurationSettings.AppSettings["connstr"].ToString();
			conn = new SqlConnection(connstr);			
		}		
		public int updata(string proc,SqlParameter[] para)
		{
			if(conn!=null)
			{
				conn.Close();
			}
			conn.Open();
            
            SqlCommand cmd = new SqlCommand(proc,conn);
            if (para != null)
            {
                foreach (SqlParameter pa in para)
                {
                    cmd.Parameters.Add(pa);
                }
            }
            int nI=cmd.ExecuteNonQuery();
			conn.Close();
			return nI;			
		}
		public DataSet getdataset(string proc,SqlParameter[] para)
		{           
            SqlCommand cmd = new SqlCommand(proc, conn);
            if (para != null)
            {
                foreach (SqlParameter pa in para)
                {
                    cmd.Parameters.Add(pa);
                }
            }
            SqlDataAdapter dataadapter = new SqlDataAdapter(cmd);
			DataSet ds = new DataSet();
			dataadapter.Fill(ds);
			return ds;
		}
		public SqlDataReader getread(string proc,SqlParameter[] para)
		{
			conn.Open();
            SqlCommand cmd = new SqlCommand(proc,conn);
            if (para != null)
            {
                foreach (SqlParameter pa in para)
                {
                    cmd.Parameters.Add(pa);
                }
            }
            return cmd.ExecuteReader(CommandBehavior.CloseConnection);
		}
		public int count(string proc,SqlParameter[] para)
		{
			if(conn!=null)
			{
				conn.Close();
			}
			conn.Open();
            SqlCommand cmd = new SqlCommand(proc,conn);
            if (para != null)
            {
                foreach (SqlParameter pa in para)
                {
                    cmd.Parameters.Add(pa);
                }
            }
            int nI=(int)cmd.ExecuteScalar();
			conn.Close();
			return nI;			
		}	
	}
}
