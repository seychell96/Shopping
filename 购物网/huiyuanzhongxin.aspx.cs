using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 购物网
{
    public partial class huiyuanzhongxin : System.Web.UI.Page
    {
        private Jiami Jm = new Jiami();
        private users us = new users();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Write("<script>alert('请先登陆!!!')</script>");
                Response.Write("<script>window.location='default.aspx'</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            us.Useradmin = Session["username"].ToString();
            us.Userpassword = Jm.password(TextBox1.Text);
            us.Newpassword = Jm.password(TextBox2.Text);
            int nI = us.users_update();
            if (nI > 0)
            {
                Response.Write("<script>alert('修改成功!请记住新密码')</script>");
                Response.Write("<script>window.location='default.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('原密码错误!')</script>");
            }
        }
    }
}