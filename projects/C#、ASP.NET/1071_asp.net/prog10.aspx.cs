using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prog10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.AllowPaging = false;
        GridView1.DataBind();
        Label1.Text = GridView1.Rows.Count.ToString();
        GridView1.AllowPaging = true;
        GridView1.DataBind();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
       
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("prog1.aspx");
    }
}