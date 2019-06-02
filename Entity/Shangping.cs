using System;
using System.Data;
using System.Data.SqlClient;
using Sqldbconn;

namespace Entity
{
	
	public class Shangping
	{
		private sqldbconn dbconn;
		private int count;
		public int Count
		{
			get
			{
				return count;
			}
			set
			{
				count = value;
			}
		}

		#region	ÊôÐÔÆ÷
		private int shangpingid;
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


		private string  shangpingname;
		public string  Shangpingname
		{
			get
			{
				return shangpingname;
			}
			set
			{
				shangpingname = value;
			}
		}

		private string spec;
		public string  Spec
		{
			get
			{
				return spec;
			}
			set
			{
				spec = value;
			}
		}

		private string shangpingpingpai;
		public string  Shangpingpingpai
		{
			get
			{
				return shangpingpingpai;
			}
			set
			{
				shangpingpingpai = value;
			}
		}

		private int quantity;
		public int  Quantity
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

		private decimal price;
		public decimal  Price
		{
			get
			{
				return price;
			}
			set
			{
				price = value;
			}
		}
		private decimal chushouprice;
		public decimal  Chushouprice
		{
			get
			{
				return chushouprice;
			}
			set
			{
				chushouprice = value;
			}
		}
		private int leibieid;
		public int  Leibieid
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

		private int fenleiid;
		public int  Fenleiid
		{
			get
			{
				return fenleiid;
			}
			set
			{
				fenleiid = value;
			}
		}

		private string gysname;
		public string Gysname
		{
			get
			{
				return gysname;
			}
			set
			{
				gysname = value;
			}
		}

		private string pic;
		public string  Pic
		{
			get
			{
				return pic;
			}
			set
			{
				pic = value;
			}
		}

		private string beizhu;
		public string Beizhu
		{
			get
			{
				return beizhu;
			}
			set
			{
				beizhu = value;
			}
		}

		#endregion


		public Shangping()
		{
            dbconn = new sqldbconn();			
		} 
		public int shangping_add()
		{
			SqlParameter [] para = new SqlParameter[11];
			para[0] = new SqlParameter("@shangpingname",SqlDbType.VarChar,40);
			para[0].Value = shangpingname;
			para[1] = new SqlParameter("@spec",SqlDbType.VarChar,20);
			para[1].Value = spec;
			para[2] = new SqlParameter("@shangpingpingpai",SqlDbType.VarChar,20);
			para[2].Value = shangpingpingpai;
			para[3] = new SqlParameter("@quantity",SqlDbType.VarChar,40);
			para[3].Value = quantity;
			para[4] = new SqlParameter("@price",SqlDbType.Decimal,12);
			para[4].Value = price;

			para[5] = new SqlParameter("@chushouprice",SqlDbType.Decimal,12);
			para[5].Value = chushouprice;
			para[6] = new SqlParameter("@leibieid",SqlDbType.Int);
			para[6].Value = leibieid;
			para[7] = new SqlParameter("@fenleiid",SqlDbType.Int);
			para[7].Value = fenleiid;
			para[8] = new SqlParameter("@gysname",SqlDbType.VarChar,50);
			para[8].Value = gysname;
			para[9] = new SqlParameter("@pic",SqlDbType.VarChar,50);
			para[9].Value = pic;
			para[10] = new SqlParameter("@beizhu",SqlDbType.VarChar,100);
			para[10].Value = beizhu;

			return dbconn.updata("insert into shangping(shangpingname,spec,shangpingpingpai,quantity,price,chushouprice,leibieid,fenleiid,gysname,pic,beizhu) values(@shangpingname,@spec,@shangpingpingpai,@quantity,@price,@chushouprice,@leibieid,@fenleiid,@gysname,@pic,@beizhu)", para);
			
		}
		public int shangping_del()
		{
			SqlParameter [] para = new SqlParameter[1];
			para[0] = new SqlParameter("@shangpingid",SqlDbType.Int);
			para[0].Value = shangpingid;
			return dbconn.updata("delete from shangping where shangpingid=@shangpingid",para);
		}
		public int shangping_update()
		{
	
			SqlParameter [] para = new SqlParameter[11];
			para[0] = new SqlParameter("@shangpingid",SqlDbType.Int);
			para[0].Value = shangpingid;
			para[1] = new SqlParameter("@shangpingname",SqlDbType.VarChar,40);
			para[1].Value = shangpingname;
			para[2] = new SqlParameter("@spec",SqlDbType.VarChar,20);
			para[2].Value = spec;
			para[3] = new SqlParameter("@shangpingpingpai",SqlDbType.VarChar,20);
			para[3].Value = shangpingpingpai;
			para[4] = new SqlParameter("@price",SqlDbType.Decimal,12);
			para[4].Value = price;

			para[5] = new SqlParameter("@chushouprice",SqlDbType.Decimal,12);
			para[5].Value = chushouprice;
			para[6] = new SqlParameter("@leibieid",SqlDbType.Int);
			para[6].Value = leibieid;
			para[7] = new SqlParameter("@fenleiid",SqlDbType.Int);
			para[7].Value = fenleiid;
			para[8] = new SqlParameter("@gysname",SqlDbType.VarChar,50);
			para[8].Value = gysname;
			para[9] = new SqlParameter("@pic",SqlDbType.VarChar,50);
			para[9].Value = pic;
			para[10] = new SqlParameter("@beizhu",SqlDbType.VarChar,100);
			para[10].Value = beizhu;
			return dbconn.updata("update shangping set shangpingname=@shangpingname,spec=@spec,shangpingpingpai=@shangpingpingpai,price=@price,chushouprice=@chushouprice,leibieid=@leibieid,fenleiid=@fenleiid,gysname=@gysname,pic=@pic,beizhu=@beizhu where shangpingid=@shangpingid", para);
		}
			

		public DataSet shangping_zx_4()
		{
              
            return dbconn.getdataset("select * from shangping where fenleiid=2", null);
        }
		public DataSet shangping_tj_4()
		{
            
            return dbconn.getdataset("select * from shangping where fenleiid=3", null);
        }
		public DataSet shangping_tt_4()
		{
           
            return dbconn.getdataset("select * from shangping where fenleiid=4", null);
        }
		public DataSet shangping_sel()
		{
			return dbconn.getdataset("select * from shangping join leibie on shangping.leibieid=leibie.leibieid join fenlei on shangping.fenleiid=fenlei.fenleiid", null);
		}

		public DataSet shangping_rm_all()
		{
			return dbconn.getdataset("select * from shangping where fenleiid=1", null);
		}
		public DataSet shangping_zx_all()
		{
			return dbconn.getdataset("select * from shangping where fenleiid=2", null);
		}
		public DataSet shangping_tj_all()
		{
			return dbconn.getdataset("select * from shangping where fenleiid=3", null);
		}
		public DataSet shangping_tt_all()
		{
			return dbconn.getdataset("select * from shangping where fenleiid=4", null);
		}

		public DataSet shangping_all_fenlei(int nI)
		{
			DataSet ds = new DataSet();			

			switch(nI)
			{
                case 1:
                    ds = dbconn.getdataset("select * from shangping where fenleiid=1", null);
                    break;
                case 2:
                    ds = dbconn.getdataset("select * from shangping where fenleiid=2", null);
                    break;
                case 3:
                    ds = dbconn.getdataset("select * from shangping where fenleiid=3", null);
                    break;
                case 4:
                    ds = dbconn.getdataset("select * from shangping where fenleiid=4", null);
                    break;
            }
			return ds;
		}
	
		public int shangpintCount()
		{
			SqlParameter [] para = new SqlParameter[1];
			para[0] = new SqlParameter("@count",SqlDbType.Int);
			para[0].Value = count;

			return dbconn.count("select count(*) from shangping where fenleiid="+count+"",para);
		}
		
		public int shangping_leibie_count()
		{
			SqlParameter [] para = new SqlParameter[1];
			para[0] = new SqlParameter("@leibieid",SqlDbType.Int);
			para[0].Value = leibieid;

			return dbconn.count("select count(*) from shangping where leibieid="+leibieid+"",para);
		}



		public SqlDataReader shangping_xingxi()
		{
			SqlParameter [] para = new SqlParameter[1];
			para[0] = new SqlParameter("@shangpingid",SqlDbType.Int);
			para[0].Value = shangpingid;
			return dbconn.getread("select * from shangping join leibie on shangping.leibieid=leibie.leibieid where shangpingid='"+ shangpingid+ "'", para);

		}

		public DataSet shangping_leibie_all()
		{
			SqlParameter [] para = new SqlParameter[1];
			para[0] = new SqlParameter("@leibieid",SqlDbType.Int);
			para[0].Value = leibieid;
			return dbconn.getdataset("select * from shangping where leibieid=@leibieid", para);
		}





		
	}
}
