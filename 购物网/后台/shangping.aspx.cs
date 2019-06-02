using Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 购物网.后台
{
    public partial class shangping : System.Web.UI.Page
    {
        private Shangping sp = new Shangping();
        private Leibie leibie = new Leibie();
        private gongyingshang gys = new gongyingshang();
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
                    ViewState["seek"] = "";
                    leibiebind();
                    fenleibind();
                    bind();
                }
            }
        }
        private void bind()
        {
            DataSet ds = sp.shangping_sel();
            DataView dv = ds.Tables[0].DefaultView;
            dv.Sort = ViewState["sort"].ToString();
            dv.RowFilter = ViewState["seek"].ToString();
            DataGrid1.DataSource = ds.Tables[0];
            DataGrid1.DataBind();
        }
        private void leibiebind()
        {
            DataSet ds = leibie.leibie_sel();
            DropDownList4.DataSource = ds;
            DropDownList4.DataTextField = "leibiename";
            DropDownList4.DataValueField = "leibieid";
            DropDownList4.DataBind();
        }
        private void fenleibind()
        {
            DataSet ds = leibie.fenlei_sel();
            DropDownList5.DataSource = ds;
            DropDownList5.DataTextField = "fenleiname";
            DropDownList5.DataValueField = "fenleiid";
            DropDownList5.DataBind();

        }

        protected void DataGrid1_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.EditItem)
            {
                DropDownList DropDownList1 = (DropDownList)e.Item.FindControl("DropDownList1");
                DataSet ds1 = leibie.leibie_sel();
                DropDownList1.DataSource = ds1;
                DropDownList1.DataTextField = "leibiename";
                DropDownList1.DataValueField = "leibieid";
                DropDownList1.DataBind();

                DropDownList DropDownList2 = (DropDownList)e.Item.FindControl("DropDownList2");
                DataSet ds2 = leibie.fenlei_sel();
                DropDownList2.DataSource = ds2;
                DropDownList2.DataTextField = "fenleiname";
                DropDownList2.DataValueField = "fenleiid";
                DropDownList2.DataBind();

                DropDownList DropDownList3 = (DropDownList)e.Item.FindControl("DropDownList3");
                DataSet ds3 = gys.gongyingshang_gysname();
                DropDownList3.DataSource = ds3;
                DropDownList3.DataTextField = "gysname";
                DropDownList3.DataValueField = "gysname";
                DropDownList3.DataBind();

            }
        }

        protected void DataGrid1_EditCommand(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = e.Item.ItemIndex;
            bind();
        }

        protected void DataGrid1_UpdateCommand(object source, DataGridCommandEventArgs e)
        {
            sp.Shangpingid = int.Parse(e.Item.Cells[0].Text);
            sp.Shangpingname = ((TextBox)e.Item.Cells[1].Controls[0]).Text;
            sp.Spec = ((TextBox)e.Item.Cells[2].Controls[0]).Text;
            sp.Shangpingpingpai = ((TextBox)e.Item.Cells[3].Controls[0]).Text;//51|a|s|p|x

            sp.Price = decimal.Parse(((TextBox)e.Item.Cells[5].Controls[0]).Text);
            sp.Chushouprice = decimal.Parse(((TextBox)e.Item.Cells[7].Controls[0]).Text);

            DropDownList DropDownList1 = (DropDownList)e.Item.FindControl("DropDownList1");
            DropDownList DropDownList2 = (DropDownList)e.Item.FindControl("DropDownList2");
            DropDownList DropDownList3 = (DropDownList)e.Item.FindControl("DropDownList3");


            sp.Leibieid = int.Parse(DropDownList1.SelectedValue);
            sp.Fenleiid = int.Parse(DropDownList2.SelectedValue);
            sp.Gysname = DropDownList3.SelectedValue;
            sp.Pic = ((TextBox)e.Item.Cells[11].Controls[0]).Text;
            sp.Beizhu = ((TextBox)e.Item.Cells[12].Controls[0]).Text;

            sp.shangping_update();
            DataGrid1.EditItemIndex = -1;

            bind();

        }

        protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            DataGrid1.CurrentPageIndex = e.NewPageIndex;
            bind();
        }

        protected void DataGrid1_CancelCommand(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = -1;
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
            sp.Shangpingid = int.Parse(e.Item.Cells[0].Text);
            sp.shangping_del();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DataGrid1.Items.Count == 1)
            {
                if (DataGrid1.CurrentPageIndex != 0)
                {
                    DataGrid1.CurrentPageIndex = DataGrid1.CurrentPageIndex - 1;
                }
            }
            if (DataGrid1.EditItemIndex >= 0)
            {
                DataGrid1.EditItemIndex = -1;
            }
            int str = int.Parse(DropDownList4.SelectedValue);
            ViewState["seek"] = "leibieid = " + str + "";
            bind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DataGrid1.Items.Count == 1)
            {
                if (DataGrid1.CurrentPageIndex != 0)
                {
                    DataGrid1.CurrentPageIndex = DataGrid1.CurrentPageIndex - 1;
                }
            }
            if (DataGrid1.EditItemIndex >= 0)
            {
                DataGrid1.EditItemIndex = -1;
            }
            int str = int.Parse(DropDownList5.SelectedValue);
            ViewState["seek"] = "fenleiid = " + str + "";
            bind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (DataGrid1.EditItemIndex >= 0)
            {
                DataGrid1.EditItemIndex = -1;
            }

            ViewState["seek"] = "";
            bind();
        }

        protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "chakan")
            {
                string str = "";
                if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
                {
                    str = e.Item.Cells[11].Text;
                }
                else if (e.Item.ItemType == ListItemType.EditItem)
                {
                    str = ((TextBox)e.Item.Cells[11].Controls[0]).Text;
                }

                str = @"..\image\" + Path.GetFileName(str);
                Response.Redirect(str, true);
            }

        }

        protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}