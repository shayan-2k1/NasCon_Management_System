using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delete_SE : System.Web.UI.Page
{
    string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (check_SE())
        {
            SqlConnection conn = new SqlConnection(conStr);
            conn.Open();
            SqlCommand cm;
            string ID_ = TextBox1.Text;

            cm = new SqlCommand("DELETE from student_executive WHERE roll_no='" + TextBox1.Text.Trim() + "'", conn);
            cm.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Student Executive Deleted Successfully!');</script>");
        }
        else
        {
            Response.Write("<script>alert('No such Student Executive!');</script>");
        }
    }

    bool check_SE()
    {
        try
        {
            SqlConnection conn = new SqlConnection(conStr);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from student_executive where roll_no='" + TextBox1.Text.Trim() + "'", conn);
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