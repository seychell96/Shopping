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
    public partial class shangpingadd : System.Web.UI.Page
    {
        private Leibie leibie = new Leibie();
        private Shangping sp;
        protected void Page_Load(object sender, EventArgs e)
        {
            sp = new Shangping();
            if (Session["adminid"] == null)
            {
                Response.Write("<script>alert('您无权进入!')</script>");
                Response.Write("<script>window.location='../default.aspx'</script>");
            }
            else
            {
                if (!this.IsPostBack)
                {
                    leibiebind();
                    fenleibind();
                    gongyingshang_gysname();
                }
            }
        }

        private void leibiebind()
        {
            DataSet ds = leibie.leibie_sel();
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "leibiename";
            DropDownList1.DataValueField = "leibieid";
            DropDownList1.DataBind();
        }
        private void fenleibind()
        {
            DataSet ds = leibie.fenlei_sel();
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "fenleiname";
            DropDownList2.DataValueField = "fenleiid";
            DropDownList2.DataBind();
        }
        private void gongyingshang_gysname()
        {
            gongyingshang gys = new gongyingshang();
            DataSet ds = gys.gongyingshang_gysname();
            DropDownList3.DataSource = ds;
            DropDownList3.DataTextField = "gysname";
            DropDownList3.DataValueField = "gysname";
            DropDownList3.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpPostedFile hpf = File1.PostedFile;
            string filename = Path.GetFileName(hpf.FileName);
            string strfile = "";
            if (filename != "")
            {
                string serverpath = Server.MapPath("../image/");
                if (!Directory.Exists(serverpath))
                {
                    Directory.CreateDirectory(serverpath);
                }

                string path = serverpath + filename;

                if (path != null)
                {
                    hpf.SaveAs(path);
                }
                strfile = "image/" + filename;
            }

            try
            {
                sp.Shangpingname = TextBox1.Text;
                sp.Spec = Textbox2.Text;
                sp.Shangpingpingpai = Textbox3.Text;
                sp.Quantity = int.Parse(Textbox4.Text);
                sp.Price = Decimal.Parse(Textbox5.Text);
                sp.Chushouprice = Decimal.Parse(TextBox6.Text);
                sp.Leibieid = int.Parse(DropDownList1.SelectedValue);
                sp.Fenleiid = int.Parse(DropDownList2.SelectedValue);
                sp.Gysname = DropDownList3.SelectedValue;//5?1?a?s?p?x
                sp.Pic = strfile;
                sp.Beizhu = Textbox7.Text;
                if (sp.shangping_add() > 0)
                {
                    Response.Write("<script>alert('添加成功')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('输入错误!')</script>");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.close()</script>");
        }
    }
}