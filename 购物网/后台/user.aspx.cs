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
    public partial class user : System.Web.UI.Page
    {
        private users us = new users();
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
                    ViewState["sort"] = "";
                    ViewState["chazao"] = "";
                    bind();
                }
            }
        }
        private void bind()
        {
            DataSet ds = us.users_sel();
            DataView dv = ds.Tables[0].DefaultView;
            dv.Sort = ViewState["sort"].ToString();
            dv.RowFilter = ViewState["chazao"].ToString();

            DataGrid1.DataSource = dv;
            DataGrid1.DataBind();

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
            us.Userid = int.Parse(e.Item.Cells[0].Text);
            us.users_del();
            bind();
        }

        protected void DataGrid1_SortCommand(object source, DataGridSortCommandEventArgs e)
        {
            string str = e.SortExpression;
            if (ViewState["sort"].ToString() == str + " desc")//5///1///a///s///p///x///
            {
                ViewState["sort"] = str + " asc";
            }
            else
            {
                ViewState["sort"] = str + " desc";
            }
            bind();
        }

        protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            DataGrid1.CurrentPageIndex = e.NewPageIndex;
            bind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = TextBox1.Text;
            ViewState["chazao"] = "useradmin like '%" + str + "%'";
            bind();
        }
    }
}