using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Faculty_Reports.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Add_SE.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Delete_SE.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Edit_Event.aspx");
    }

}