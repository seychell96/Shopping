using Entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 购物网.后台
{
    public partial class adminlogin : System.Web.UI.Page
    {
        private Admin ad;
        private Jiami Jm = new Jiami();
        protected void Page_Load(object sender, EventArgs e)
        {
            ad = new Admin();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ad.Adminname = Text1.Value;
            ad.Adminpassword = Jm.password(Password1.Value.Trim());
            SqlDataReader da = ad.admin_denlu();
            if (da.Read())
            {
                string str = da["adminid"].ToString();
                Session["adminid"] = str;
                Session["adminname"] = Text1.Value;
                Response.Redirect("houtaimain.aspx");
            }
            else
            {
                Response.Write("<script>alert('您无权进入系统!')</script>");
            }
            da.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location='../default.aspx'</script>");
        }
    }
}