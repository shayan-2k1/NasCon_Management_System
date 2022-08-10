using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_Reports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = false;
        GridView3.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
        GridView2.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView3.Visible = true;
        GridView3.DataBind();
    }
}