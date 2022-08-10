using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delete_F : System.Web.UI.Page
{
    string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (F_check())
        {
            SqlConnection conn = new SqlConnection(conStr);
            conn.Open();
            SqlCommand cm;
            string ID_ = TextBox1.Text;

            cm = new SqlCommand("DELETE from Faculty_mentor WHERE faculty_mentor_id='" + TextBox1.Text.Trim() + "'", conn);
            cm.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Mentor Deleted Successfully!');</script>");
        }
        else
        {
            Response.Write("<script>alert('Invalid ID! No such data.');</script>");
        }

    }

    bool F_check()
    {
        try
        {
            SqlConnection conn = new SqlConnection(conStr);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from Faculty_mentor where faculty_mentor_id='" + TextBox1.Text.Trim() + "'", conn);
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