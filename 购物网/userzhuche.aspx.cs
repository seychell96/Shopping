using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 购物网
{
    public partial class userzhuche : System.Web.UI.Page
    {
        private users user = new users();
        private Jiami Jm = new Jiami();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Response.Redirect("huiyuanzhongxin.aspx");
            }
        }

        protected void Imagebutton2_Click(object sender, ImageClickEventArgs e)
        {
            user.Useradmin = TextBox1.Text.Trim();
            user.Userpassword = Jm.password(TextBox2.Text.Trim());
            user.Username = TextBox4.Text.Trim();
            user.Useremail = TextBox5.Text.Trim();
            user.Usershengfen = TextBox6.Text.Trim();
            user.Usertelphone = TextBox7.Text.Trim();
            user.Usershouji = TextBox8.Text.Trim();
            user.Useraddress = TextBox9.Text.Trim();
            int nI = user.users_add();
            if (nI > 0)
            {
                Response.Write("<script>alert('注册成功')</script>");
                Session["username"] = TextBox1.Text;
                Response.Write("<script>window.location='default.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('用户名已存在,请更改用户名')</script>");
            }
        }
    }
}