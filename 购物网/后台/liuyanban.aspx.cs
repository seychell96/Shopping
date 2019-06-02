﻿using Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 购物网.后台
{
    public partial class liuyanban : System.Web.UI.Page
    {
        private Liuyanban lyb = new Liuyanban();
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
                    bind();
                }
            }
        }
        private void bind()
        {
            DataSet ds = lyb.userliuyanban_sel();
            DataView dv = ds.Tables[0].DefaultView;
            dv.Sort = ViewState["sort"].ToString();

            DataGrid1.DataSource = dv;
            DataGrid1.DataBind();
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

        protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
        {
            if (DataGrid1.Items.Count == 1)
            {
                if (DataGrid1.CurrentPageIndex != 0)
                {
                    DataGrid1.CurrentPageIndex = DataGrid1.CurrentPageIndex - 1;
                }
            }
            lyb.Lybid = int.Parse(e.Item.Cells[0].Text);
            lyb.userliuyanban_del();
            bind();
        }

        protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "chakan")
            {
                Panel1.Visible = true;
                lyb.Lybid = int.Parse(e.Item.Cells[0].Text);
                SqlDataReader dr = lyb.userliuyanban_lybcontent();
                if (dr.Read())
                {
                    Label1.Text = dr["lybcontent"].ToString();
                }
                dr.Close();
            }
        }
    }
}