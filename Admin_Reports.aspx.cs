using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Reports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin_View.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Add_F.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Add_SE.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Add_S.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Add_E.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Delete_F.aspx");
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Delete_SE.aspx");
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Delete_S.aspx");
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Delete_E.aspx");
    }

}