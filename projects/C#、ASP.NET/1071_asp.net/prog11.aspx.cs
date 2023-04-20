using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prog11 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["acount"]!=null)
        {
            Label4.Text = Session["acount"].ToString();
            Label1.Text = GridView1.Rows[0].Cells[1].Text;
            Label2.Text = GridView1.Rows[0].Cells[2].Text;
            Label3.Text = GridView1.Rows[0].Cells[3].Text;
        }
        else
        {
            Response.Write("<script>alert('非會員無法查看，請回登入頁面登入!');location.href='prog1.aspx';</script>");
        }
    }

   
}