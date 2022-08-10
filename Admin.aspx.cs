using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (AdminCheck())
        { 
            Response.Redirect("~/Admin_Reports.aspx");
        }
        else if(!AdminCheck())
        {
            Response.Write("<script>alert('Invalid Caridentials!');</script>");
        }
    }
    bool AdminCheck()
    {
        try
        {
            SqlConnection conn = new SqlConnection(conStr);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from Admin where username='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", conn);
            SqlDataReader dr=cmd.ExecuteReader();
            if(dr.HasRows)
            {
                Response.Write("<script>alert('Welcome Admin');</script>");
                return true;
            }
            else
            {
                return false;
            }
        }
        catch(Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
            return false;
        }
    }
}