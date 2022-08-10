using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add_F : System.Web.UI.Page
{
    string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (F_check()==true)
        {
            Response.Write("<script>alert('ID already exists');</script>");
        }
        else
        {
            SqlConnection conn = new SqlConnection(conStr);
            conn.Open();
            SqlCommand cm;
            string u_ID = TextBox1.Text;
            string Nam = TextBox2.Text;
            string Cat = TextBox3.Text;
            cm = new SqlCommand("INSERT INTO Faculty_mentor(faculty_mentor_id,_name,category) values(@u_ID,@Nam,@Cat)", conn);
            cm.Parameters.AddWithValue("@u_ID", TextBox1.Text.Trim());
            cm.Parameters.AddWithValue("@Nam", TextBox2.Text.Trim());
            cm.Parameters.AddWithValue("@Cat", TextBox3.Text.Trim());
            cm.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Mentor Added Successfully');</script>");
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

            SqlCommand cmd = new SqlCommand("select * from Faculty_mentor where faculty_mentor_id='"+TextBox1.Text.Trim()+"'", conn);
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