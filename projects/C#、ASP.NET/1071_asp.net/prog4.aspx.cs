using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prog4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.AllowPaging = false;
        GridView1.DataBind();
        Label3.Text = GridView1.Rows.Count.ToString();
        GridView1.AllowPaging = true;
        GridView1.DataBind();
    }
}