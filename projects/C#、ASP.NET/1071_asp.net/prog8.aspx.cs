using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prog8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
        Label1.Visible = true;
        LinkButton1.Visible = true;
        
        //try
        //{
        //    SqlDataSource1.Insert();
        //    Label1.Text = "新增資料成功";
        //}
        //catch
        //{
        //    Label1.Text = "新增資料錯誤";
        //}
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        
    }
}