using Entity;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 购物网
{
    public partial class shopping : System.Web.UI.Page
    {
        private decimal money = 0;
        private int count = 0;
        private Dingdan dingd = new Dingdan();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Session["gwcount"] = count.ToString();
                Session["gwprice"] = money.ToString();
                if (Session["username"] == null)
                {
                    Response.Write("<script>alert('请先登陆!!!')</script>");
                    Session["gwshangping"] = null;
                    Response.Write("<script>window.location='default.aspx'</script>");
                }
                else
                {
                    shopbind();
                    Label2.Text = count.ToString();
                }
            }
        }
        public void shopbind()
        {
            if (Session["gwshangping"] != null)
            {
                IList gwsp = (ArrayList)Session["gwshangping"];
                DataGrid1.DataSource = gwsp;
                DataGrid1.DataBind();
            }
        }

        protected void DataGrid1_Load(object sender, EventArgs e)
        {
            for (int i = 0; i < DataGrid1.Items.Count; i++)
            {
                money += decimal.Parse(DataGrid1.Items[i].Cells[4].Text);
            }
            count = DataGrid1.Items.Count;
            Label1.Text = money.ToString();
            Label2.Text = count.ToString();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
        {
            ArrayList gwlis = new ArrayList();
            gwlis = (ArrayList)Session["gwshangping"];

            int nI = int.Parse(e.Item.Cells[0].Text);


            for (int nJ = 0; nJ <= gwlis.Count - 1; nJ++)
            {
                Gouwu gw = new Gouwu();
                gw = (Gouwu)gwlis[nJ];
                if (gw.Shangpingid == nI)
                {
                    money -= decimal.Parse(DataGrid1.Items[nJ].Cells[4].Text);
                    gwlis.RemoveAt(nJ);
                }
            }
            Session["gwshangping"] = gwlis;
            shopbind();
            count = DataGrid1.Items.Count;
            Label1.Text = money.ToString();
            Label2.Text = count.ToString();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("<script>window.location = 'default.aspx'</script>");
        }

        protected void Imagebutton3_Click(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = false;
            dingd.Useradmin = Session["username"].ToString();
            dingd.Username = TextBox1.Text;
            dingd.Usertelphone = TextBox2.Text;
            dingd.Useraddress = TextBox3.Text;
            dingd.Dingdanbeizhu = TextBox4.Text;

            if (DataGrid1.Items.Count > 0)
            {
                for (int nI = 0; nI <= DataGrid1.Items.Count - 1; nI++)
                {
                    dingd.Shangpingid = int.Parse(DataGrid1.Items[nI].Cells[0].Text);
                    dingd.Quantity = int.Parse(DataGrid1.Items[nI].Cells[3].Text);
                    dingd.Totalprice = decimal.Parse(DataGrid1.Items[nI].Cells[4].Text);
                    dingd.dingdan_add();
                }
                Response.Write("<script>alert('提交定单成功!')</script>");
                Session["gwshangping"] = null;
                Response.Write("<script>window.location='default.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('你购物车中没有商品!!!')</script>");
            }
        }
    }
}