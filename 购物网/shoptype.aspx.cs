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
    public partial class shoptype : System.Web.UI.Page
    {
        private users user = new users();
        private Jiami Jm = new Jiami();
        private Shangping sp = new Shangping();
        private Leibie lb = new Leibie();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                int nI = 0;
                if (Request.QueryString["typeid"] != null)
                {

                    if (Request.QueryString["typeid"].ToString() != "")
                    {
                        try
                        {
                            nI = int.Parse(Request.QueryString["typeid"].ToString());
                        }
                        catch (Exception ex)
                        {
                            Response.Write("<script>alert('非法操作！" + ex.Message + "');</script>");
                            Response.End();
                        }
                    }
                    Panel2.Visible = true;
                    Panel3.Visible = false;
                    if (Session["username"] != null)
                    {
                        string str = Session["username"].ToString();
                        Panel2.Visible = false;
                        Panel3.Visible = true;
                        username.Text = str;
                    }
                    bind(nI);
                    bindleibie();
                }
                else
                {
                    Response.Write("<script>alert('非法操作！');</script>");
                    Response.Write("<script>window.location='default.aspx'</script>");
                }
            }
        }
            public void bindleibie()
        {
            DataSet ds = lb.leibie_sel();
            DataList4.DataSource = ds;
            DataList4.DataBind();
        }

        public void bind(int nI)
        {
            int count = 0;
            switch (nI)
            {
                case 1:
                    Label3.Text = "热卖商品";
                    sp.Count = 1;
                    count = sp.shangpintCount();
                    binddatalist(1);
                    break;
                case 2:
                    Label3.Text = "最新商品";
                    sp.Count = 2;
                    count = sp.shangpintCount();
                    binddatalist(2);
                    break;
                case 3:
                    Label3.Text = "推荐商品";
                    sp.Count = 3;
                    count = sp.shangpintCount();
                    binddatalist(3);
                    break;
                case 4:
                    Label3.Text = "特价商品";
                    sp.Count = 4;
                    count = sp.shangpintCount();
                    binddatalist(4);
                    break;
            }
            Label5.Text = "共有商品" + count.ToString() + "件";

            if (count % 8 != 0)
                Label6.Text = "共" + Convert.ToString(count / 8 + 1) + "页";
            else
                Label6.Text = "共" + Convert.ToString(count / 8) + "页";
        }

        public void binddatalist(int nI)
        {
            DataSet ds = sp.shangping_all_fenlei(nI);
            PagedDataSource page = new PagedDataSource();
            page.DataSource = ds.Tables[0].DefaultView;
            page.AllowPaging = true;
            page.PageSize = 8;

            int curpage;
            if (Request.QueryString["page"] != null)
                curpage = int.Parse(Request.QueryString["page"]);
            else
                curpage = 1;
            page.CurrentPageIndex = curpage - 1;

            Label4.Text = "当前页:" + curpage.ToString();
            if (!page.IsFirstPage)
            {
                HyperLink2.NavigateUrl = "shoptype.aspx?typeid=" + nI.ToString() + "&page=" + Convert.ToString(curpage - 1);
            }
            if (!page.IsLastPage)
            {
                HyperLink3.NavigateUrl = "shoptype.aspx?typeid=" + nI.ToString() + "&page=" + Convert.ToString(curpage + 1);
            }

            DataList1.DataSource = page;
            DataList1.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
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
        }
    }
    
}