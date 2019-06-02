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
    public partial class shangpingleibie : System.Web.UI.Page
    {
        private Shangping sp = new Shangping();
        private Leibie lb = new Leibie();
        private users user = new users();
        private Jiami Jm = new Jiami();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                int nI = 0;
                if (Request.QueryString["leibieid"] != null)
                {
                    if (Request.QueryString["leibieid"].ToString() != "")
                    {
                        try
                        {
                            nI = int.Parse(Request.QueryString["leibieid"].ToString());
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
                    binddatalist(nI);
                    bindleibie(nI);
                    bindleibies();
                }
                else
                {
                    Response.Write("<script>alert('非法操作！');</script>");
                    Response.Write("<script>window.location='default.aspx'</script>");
                }
            }
        }
        public void bindleibies()
        {
            DataSet ds = lb.leibie_sel();
            DataList4.DataSource = ds;
            DataList4.DataBind();
        }
        private void binddatalist(int nI)
        {            
            sp.Leibieid = nI;
            DataSet ds = sp.shangping_leibie_all();
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
                HyperLink2.NavigateUrl = "shangpingleibie.aspx?leibieid=" + nI.ToString() + "&page=" + Convert.ToString(curpage - 1);
            }
            if (!page.IsLastPage)
            {
                HyperLink3.NavigateUrl = "shangpingleibie.aspx?leibieid=" + nI.ToString() + "&page=" + Convert.ToString(curpage + 1);
            }

            DataList1.DataSource = page;
            DataList1.DataBind();
        }

        private void bindleibie(int nI)
        {
            lb.Leibieid = nI;
            SqlDataReader dr = lb.leibie_name();
            if (dr.Read())
            {
                Label3.Text = dr["leibiename"].ToString();
            }
            dr.Close();

            sp.Leibieid = nI;
            int count = sp.shangping_leibie_count();
            Label5.Text = "共有商品" + count.ToString() + "件";

            if (count % 8 != 0)
                Label6.Text = "共" + Convert.ToString(count / 8 + 1) + "页";
            else
                Label6.Text = "共" + Convert.ToString(count / 8) + "页";
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