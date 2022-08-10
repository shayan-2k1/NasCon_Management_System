using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Edit_Event : System.Web.UI.Page
{
    string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (check_Event())
        {
            SqlConnection conn = new SqlConnection(conStr);
            conn.Open();
            SqlCommand cm;
            string d = TextBox2.Text;
            string s_t = TextBox3.Text;
            string e_d = TextBox4.Text;

            cm = new SqlCommand("UPDATE event SET date=@d,start_time=@s_t,end_time=@e_d WHERE event_id='" + TextBox1.Text.Trim() + "'", conn);
            cm.Parameters.AddWithValue("@d", TextBox2.Text.Trim());
            cm.Parameters.AddWithValue("@s_t", TextBox3.Text.Trim());
            cm.Parameters.AddWithValue("@e_d", TextBox4.Text.Trim());
            cm.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Event Updated Successfully!');</script>");
        }
        else
        {
            Response.Write("<script>alert('No Event with such ID!');</script>");
        }
    }

    bool check_Event()
    {
        try
        {
            SqlConnection conn = new SqlConnection(conStr);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from event where event_id='" + TextBox1.Text.Trim() + "'", conn);
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