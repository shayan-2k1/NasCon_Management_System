using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = false;
        GridView3.Visible = false;
        GridView4.Visible = false;
        GridView5.Visible = false;
        GridView6.Visible = false;
        GridView7.Visible = false;
        GridView8.Visible = false;
        GridView9.Visible = false;
        GridView10.Visible = false;
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

    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView4.Visible = true;
        GridView4.DataBind();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        GridView5.Visible = true;
        GridView5.DataBind();
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        GridView6.Visible = true;
        GridView6.DataBind();
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        GridView7.Visible = true;
        GridView7.DataBind();
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        GridView8.Visible = true;
        GridView8.DataBind();
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        GridView9.Visible = true;
        GridView9.DataBind();
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        GridView10.Visible = true;
        GridView10.DataBind();
    }
}