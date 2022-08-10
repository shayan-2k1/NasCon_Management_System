using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add_S : System.Web.UI.Page
{
    string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(check_Sponsor())
        {
            Response.Write("<script>alert('Sponsor with same ID already exists!');</script>");
        }
        else
        {
            SqlConnection conn = new SqlConnection(conStr);
            conn.Open();
            SqlCommand cm;
            string ID_ = TextBox1.Text;
            string Nam = TextBox2.Text;

            cm = new SqlCommand("INSERT INTO sponsor(sponsor_id,sponsor_name) values(@ID_,Nam)", conn);
            cm.Parameters.AddWithValue("@Nam", TextBox1.Text.Trim());
            cm.Parameters.AddWithValue("@p", TextBox2.Text.Trim());
            cm.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Event Added Successfully');</script>");
        }
    }
    bool check_Sponsor()
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