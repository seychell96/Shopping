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
    public partial class admin : System.Web.UI.Page
    {
        private Admin admi = new Admin();
        private Jiami Jm = new Jiami();
        protected void Page_Load(object sender, EventArgs e)
        {
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
        private void bind()
        {
            DataSet ds = admi.admin_select();
            DataGrid1.DataSource = ds;
            DataGrid1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = !Panel1.Visible;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            admi.Adminstr = Session["adminname"].ToString();
            admi.Adminname = TextBox1.Text;
            admi.Adminpassword = Jm.password(TextBox2.Text);
            int nI = admi.admin_add();
            if (nI == 2)
            {
                Response.Write("<script>alert('操作失败!用户名已存在!')</script>");
                
            }            
            else
            {
                Response.Write("<script>alert('增加成功!')</script>");
            }
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
            admi.Adminid = int.Parse(e.Item.Cells[0].Text);
            admi.Adminstr = Session["adminname"].ToString();
            admi.Adminname = e.Item.Cells[1].Text;
            int nI = admi.admin_del();
            if (nI > 0)
            {
                Response.Write("<script>alert('操作成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('对不起,你没有删除权限!')</script>");
            }
            bind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = !Panel2.Visible;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            admi.Adminstr = Session["adminname"].ToString();
            admi.Adminpassword = Jm.password(TextBox4.Text);
            int nI = admi.admin_update();
            if (nI > 0)
            {
                Response.Write("<script>alert('操作成功!')</script>");
            }
            bind();
        }
    }
}