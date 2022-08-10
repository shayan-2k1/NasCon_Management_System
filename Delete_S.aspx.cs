using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delete_S : System.Web.UI.Page
{
    string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (S_check())
        {
            SqlConnection conn = new SqlConnection(conStr);
            conn.Open();
            SqlCommand cm;
            string ID_ = TextBox1.Text;

            cm = new SqlCommand("DELETE from sponsor WHERE sponsor_id='" + TextBox1.Text.Trim() + "'", conn);
            cm.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Sponsor Deleted Successfully!');</script>");
        }
        else
        {
            Response.Write("<script>alert('No such sponsor.');</script>");
        }

    }

    bool S_check()
    {
        try
        {
            SqlConnection conn = new SqlConnection(conStr);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from sponsor where sponsor_id='" + TextBox1.Text.Trim() + "'", conn);
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