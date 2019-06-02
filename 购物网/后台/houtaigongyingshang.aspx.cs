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
    public partial class houtaigongyingshang : System.Web.UI.Page
    {
        private gongyingshang gys;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminid"] == null)
            {
                Response.Write("<script>alert('您无权进入!')</script>");
                Response.Write("<script>window.location='../default.aspx'</script>");
            }
            else
            {
                gys = new gongyingshang();
                if (!this.IsPostBack)
                {
                    ViewState["sort"] = "";
                    ViewState["seek"] = "";
                    bind();
                }
            }

        }
        private void bind()
        {
            DataSet ds = gys.gongyingshang_select();
            DataView dv = ds.Tables[0].DefaultView;
            dv.Sort = ViewState["sort"].ToString();
            dv.RowFilter = ViewState["seek"].ToString();

            DataGrid1.DataSource = dv;
            DataGrid1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = !Panel1.Visible;
        }

        protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            DataGrid1.CurrentPageIndex = e.NewPageIndex;
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
            gys.GysID = int.Parse(e.Item.Cells[0].Text);
            gys.gongyingshang_del();
            bind();
        }

        protected void DataGrid1_SortCommand(object source, DataGridSortCommandEventArgs e)
        {
            string str = e.SortExpression;
            if (ViewState["sort"].ToString() == str + " desc")
            {
                ViewState["sort"] = str + " asc";
            }
            else
            {
                ViewState["sort"] = str + " desc";
            }
            bind();
        }

        protected void DataGrid1_CancelCommand(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = -1;
            bind();
        }

        protected void DataGrid1_EditCommand(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = e.Item.ItemIndex;
            bind();
        }

        protected void DataGrid1_UpdateCommand(object source, DataGridCommandEventArgs e)
        {
            gys.GysID = int.Parse(e.Item.Cells[0].Text);
            gys.Gysname = ((TextBox)e.Item.Cells[1].Controls[0]).Text;
            gys.Gyslinkman = ((TextBox)e.Item.Cells[2].Controls[0]).Text;
            gys.Telephone = ((TextBox)e.Item.Cells[3].Controls[0]).Text;
            gys.Email = ((TextBox)e.Item.Cells[4].Controls[0]).Text;
            gys.Address = ((TextBox)e.Item.Cells[5].Controls[0]).Text;
            DataGrid1.EditItemIndex = -1;
            gys.gongyingshang_modif();
            bind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            gys.Gysname = TextBox1.Text;
            gys.Gyslinkman = TextBox2.Text;
            gys.Telephone = TextBox3.Text;
            gys.Email = TextBox4.Text;
            gys.Address = TextBox5.Text;
            int nI = gys.gongyingshang_insert();
            if (nI > 0)
            {
                Response.Write("<script>alert('成功!')</script>");
            }
            bind();
        }

        
    }
}