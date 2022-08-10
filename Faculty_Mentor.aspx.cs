using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_Mentor : System.Web.UI.Page
{
    string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Faculty_Check())
        {
            Response.Write("<script>alert('Welcome Mentor');</script>");
            Response.Redirect("~/Faculty_View.aspx");
        }
        else if (!Faculty_Check())
        {
            Response.Write("<script>alert('Invalid Caridentials!');</script>");
        }
    }
    bool Faculty_Check()
    {
        try
        {
            SqlConnection conn = new SqlConnection(conStr);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from Faculty_mentor where faculty_mentor_id='" + TextBox1.Text.Trim() + "' AND _name='" + TextBox2.Text.Trim() + "'", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
            return false;
        }
    }
}