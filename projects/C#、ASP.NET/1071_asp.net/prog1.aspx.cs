using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prog1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["acount"] = TextBox1.Text;

        GridView1.DataSourceID = "SqlDataSource1";
        GridView1.DataBind();
        GridView1.Visible = false;

        if (GridView1.Rows.Count != 0)
        {
            Label1.Text = "登入成功!!!";
            Session["mys1061611"] = "ok";
            Response.Redirect("prog7.aspx");
        }
        else
        {
            Label1.Text = "無此帳號或密碼錯誤";
            Session["mys1061611"] = "nooo";
        }
    }
}