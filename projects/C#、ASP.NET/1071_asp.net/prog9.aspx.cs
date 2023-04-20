using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prog9 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mys1061611"] != "ok")
        {
            Response.Write("<script>alert('非會員無法查看，請回登入頁面登入!');location.href='prog1.aspx';</script>");
        }
        else
        {
        Label6.Text = Session["acount"].ToString();
        GridView1.AllowPaging = false;
        GridView1.DataBind();
        Label5.Text = GridView1.Rows.Count.ToString();
        GridView1.AllowPaging = true;
        GridView1.DataBind();
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
        GridView1.Visible = true;
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
        Label1.Visible = true;
        Label4.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("prog1.aspx");
    }
}