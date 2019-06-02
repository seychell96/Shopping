using Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 购物网
{
    public partial class MainPage : System.Web.UI.Page
    {
        private Shangping sp = new Shangping();
        private users user = new users();
        private Jiami Jm = new Jiami();
        private Leibie lb = new Leibie();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["adminid"] = null;
            if (!this.IsPostBack)
            {
                Panel2.Visible = true;
                Panel3.Visible = false;
                if (Session["username"] != null)
                {
                    string str = Session["username"].ToString();
                    Panel2.Visible = false;
                    Panel3.Visible = true;
                    username.Text = str;
                }
                bindzx();
                bindtj();
                bindtt();
                bindleibie();
                
            }
        }
        public void bindzx()//最新商品
        {
            DataSet ds = sp.shangping_zx_4();
            DataList1.DataSource = ds;
            DataList1.DataBind();

        }
        public void bindtj()//推荐商品
        {
            DataSet ds = sp.shangping_tj_4();
            Datalist2.DataSource = ds;
            Datalist2.DataBind();

        }
        public void bindtt()//特价商品
        {
            DataSet ds = sp.shangping_tt_4();
            Datalist3.DataSource = ds;
            Datalist3.DataBind();
        }
        public void bindleibie()//类别
        {
            DataSet ds = lb.leibie_sel();
            DataList4.DataSource = ds;
            DataList4.DataBind();
        }
       
        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)//登录
        {

            user.Useradmin = TextBox1.Text;
            user.Userpassword = Jm.password(Textbox2.Text);
            SqlDataReader read = user.users_denlu();
            if (read.Read())
            {
                Session["username"] = TextBox1.Text;
                Panel2.Visible = false;
                Panel3.Visible = true;
                username.Text = TextBox1.Text;
            }
            else
            {
                Response.Write("<script>alert('账号密码错误!!!')</script>");
            }
            read.Close();
        }

        protected void Imagebutton3_Click(object sender, ImageClickEventArgs e)
        {
            Session["username"] = null;
            Panel2.Visible = true;
            Panel3.Visible = false;
            Session["gwshangping"] = null;
        }

        protected void DataList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}