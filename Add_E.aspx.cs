using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add_E : System.Web.UI.Page
{
    string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(check_Event())
        {
            Response.Write("<script>alert('Event already exists!');<script/>");
        }
        else
        {
            SqlConnection conn = new SqlConnection(conStr);
            conn.Open();
            SqlCommand cm;
            string Nam = TextBox1.Text;
            string p = TextBox2.Text;
            string d = TextBox3.Text;
            string s_t = TextBox4.Text;
            string e_t = TextBox5.Text;
            string v = TextBox6.Text;
            string f_m = TextBox7.Text;
            string s_e = TextBox8.Text;

            cm = new SqlCommand("INSERT INTO event(_name,price,date,start_time,end_time,venue,faculty_mentor_id,student_executive_id) values(@Nam,@p,@d,@s_t,@e_t,@v,@f_m,@s_e)", conn);
            cm.Parameters.AddWithValue("@Nam", TextBox1.Text.Trim());
            cm.Parameters.AddWithValue("@p", TextBox2.Text.Trim());
            cm.Parameters.AddWithValue("@d", TextBox3.Text.Trim());
            cm.Parameters.AddWithValue("@s_t", TextBox4.Text.Trim());
            cm.Parameters.AddWithValue("@e_t", TextBox5.Text.Trim());
            cm.Parameters.AddWithValue("@v", TextBox6.Text.Trim());
            cm.Parameters.AddWithValue("@f_m", TextBox7.Text.Trim());
            cm.Parameters.AddWithValue("@s_e", TextBox8.Text.Trim());
            cm.ExecuteNonQuery();
            Response.Write("<script>alert('Event Added Successfully');</script>");
            conn.Close();
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

            SqlCommand cmd = new SqlCommand("select * from event where _name='" + TextBox1.Text.Trim() + "'", conn);
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