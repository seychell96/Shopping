using Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 购物网.后台
{
    public partial class shangpingleibie : System.Web.UI.Page
    {
        private Leibie leibie;
        protected void Page_Load(object sender, EventArgs e)
        {
            leibie = new Leibie();
            if (Session["adminid"] == null)
            {
                Response.Write("<script>alert('您无权进入!')</script>");
                Response.Write("<script>window.location='../default.aspx'</script>");
            }
            else
            {
                if (!this.IsPostBack)
                {
                    bind();
                }
            }

        }
        public void bind()
        {
            DataSet ds = leibie.leibie_sel();
            DataGrid1.DataSource = ds;
            DataGrid1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = !Panel1.Visible;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            leibie.Leibiename = TextBox1.Text;
            leibie.leibie_add();
            bind();
        }

        protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
        {
            if (DataGrid1.Items.Count == 1)
            {
                if (DataGrid1.CurrentPageIndex != 0)
                {
                    DataGrid1.CurrentPageIndex = DataGrid1.CurrentPageIndex - 1;
                }
            }
            leibie.Leibieid = int.Parse(e.Item.Cells[0].Text);//51#aspx
            int nI = leibie.leibie_del();

            if (nI > 0)
            {
                Response.Write("<script>alert('操作成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('操作失败,商品中存在此类别')</script>");
            }
            bind();
        }

        protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}