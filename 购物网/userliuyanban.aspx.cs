using Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 购物网
{
    public partial class userliuyanban : System.Web.UI.Page
    {
        private Liuyanban lyb = new Liuyanban();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                bind();
            }
        }
        public void bind()
        {
            DataSet ds = lyb.userliuyanban_sel_top10();
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lyb.Username = TextBox1.Text;
            lyb.Useremail = TextBox2.Text;
            lyb.Lybcontent = TextBox3.Text;
            int nI = lyb.userliuyanban_add();
            if (nI > 0)
            {
                Response.Write("<script>alert('添加成功!')</script>");

            }
            bind();
            Button1.Enabled = false;
        }
    }
}