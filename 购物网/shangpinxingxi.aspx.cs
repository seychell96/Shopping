using Entity;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 购物网
{
    public partial class shangpinxingxi : System.Web.UI.Page
    {
        private Shangping sp = new Shangping();
        private users user = new users();
        private Jiami Jm = new Jiami();
        private Leibie lb = new Leibie();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                int nI = 0;
                if (Request.QueryString["spid"] != null)
                {

                    if (Request.QueryString["spid"].ToString() != "")
                    {
                        try
                        {
                            nI = int.Parse(Request.QueryString["spid"].ToString());
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

        private void bind(int nI)
        {
            sp.Shangpingid = nI;
            SqlDataReader dr = sp.shangping_xingxi();
            if (dr.Read())
            {
                Label1.Text = dr["leibiename"].ToString();
                Image1.ImageUrl = dr["pic"].ToString();
                Label2.Text = dr["shangpingid"].ToString();
                Label3.Text = dr["shangpingname"].ToString();
                Label4.Text = dr["spec"].ToString();
                Label5.Text = dr["shangpingpingpai"].ToString();
                Label6.Text = dr["chushouprice"].ToString();
                Label7.Text = dr["beizhu"].ToString();
            }
            dr.Close();
       
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            user.Useradmin = TextBox1.Text;
            user.Userpassword = Jm.password(Textbox2.Text);
            SqlDataReader read = user.users_denlu();
            if (read.Read())//51^aspx
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

        protected void Imagebutton4_Click(object sender, ImageClickEventArgs e)
        {
            Session["username"] = null;
            Panel2.Visible = true;
            Panel3.Visible = false;

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Write("<script>alert('请先登陆!!!')</script>");
                Session["gwshangping"] = null;
                Response.Write("<script>window.location='default.aspx'</script>");
            }
            else
            {
                int nI = -1;
                try
                {
                    nI = int.Parse(TextBox4.Text.Trim());
                }
                catch (Exception)
                {
                    Response.Write("<script>alert('购物数量只能为数字！')</script>");
                }
                if (nI > 0)
                {
                    Gouwu gw = new Gouwu();
                    gw.Shangpingid = int.Parse(Label2.Text);
                    gw.Shangpingname = Label3.Text;
                    gw.Price = Decimal.Parse(Label6.Text);
                    gw.Quantity = nI;
                    gw.Allprice = Decimal.Parse(Label6.Text) * nI;

                    ArrayList gwlist = new ArrayList();
                    if (Session["gwshangping"] != null)
                    {
                        gwlist = (ArrayList)Session["gwshangping"];
                    }
                    gwlist.Add(gw);
                    Session["gwshangping"] = gwlist;
                    Response.Redirect("shopping.aspx");

                }
                else
                {
                    Response.Write("<script>alert('不能为负数！')</script>");
                }
            }


            }
        }
}