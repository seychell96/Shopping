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
    public partial class dingdan : System.Web.UI.Page
    {
        private Dingdan dd = new Dingdan();
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
                    ViewState["chazhao"] = "";
                    bind();
                }
            }
        }

        private void bind()
        {
            DataSet ds = dd.dingdan_sel();
            DataView dv = ds.Tables[0].DefaultView;
            dv.Sort = ViewState["sort"].ToString();
            dv.RowFilter = ViewState["chazhao"].ToString();

            DataGrid1.DataSource = dv;
            DataGrid1.DataBind();
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "定单编号")
            {
                try
                {
                    int str = int.Parse(TextBox1.Text);
                    ViewState["chazhao"] = "dingdanid = " + str + "";
                }
                catch (Exception)
                {

                }

            }
            if (DropDownList1.SelectedValue == "会员名")
            {
                try
                {
                    string str = TextBox1.Text;
                    ViewState["chazhao"] = "useradmin like '%" + str + "%'";//5+1-a-s-p-x
                }
                catch (Exception)
                {
                }

            }
            if (DropDownList1.SelectedValue == "商品编号")
            {
                try
                {
                    int str = int.Parse(TextBox1.Text);
                    ViewState["chazhao"] = "shangpingid = " + str + "";
                }
                catch (Exception)
                {
                }

            }
            if (DropDownList1.SelectedValue == "显示全部")
            {
                try
                {
                    int str = int.Parse(TextBox1.Text);
                    ViewState["chazhao"] = "";
                }
                catch (Exception)
                {
                }

            }
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

        protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            DataGrid1.CurrentPageIndex = e.NewPageIndex;
            bind();
        }
    }
}