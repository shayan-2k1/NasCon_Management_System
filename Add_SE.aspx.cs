using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add_SE : System.Web.UI.Page
{
    string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    { 
        if(check_SE())
        {
            Response.Write("<script>alert('Record with this ID already exists');<script/>");
        }
        else
        {
          SqlConnection conn = new SqlConnection(conStr);
            conn.Open();
            SqlCommand cm;
            string Nam = TextBox1.Text;
            string r_no = TextBox2.Text;
            string b = TextBox3.Text;
            string e_id = TextBox4.Text;
            string r = TextBox5.Text;
            string m_f = TextBox6.Text;
            string d_id = TextBox7.Text;
            string p_f = TextBox8.Text;
            string vp_f = TextBox9.Text;
            string pass = TextBox10.Text;

            cm = new SqlCommand("INSERT INTO student_executive(_name,roll_no,batch,event_id,_role,management_flag,department_id,President_flag,VicePresident_flag,password) values(@Nam,@r_no,@b,@e_id,@r,@m_f,@d_id,@p_f,@vp_f,@pass)", conn);
            cm.Parameters.AddWithValue("@Nam", TextBox1.Text.Trim());
            cm.Parameters.AddWithValue("@r_no", TextBox2.Text.Trim());
            cm.Parameters.AddWithValue("@b", TextBox3.Text.Trim());
            cm.Parameters.AddWithValue("@e_id", TextBox4.Text.Trim());
            cm.Parameters.AddWithValue("@r", TextBox5.Text.Trim());
            cm.Parameters.AddWithValue("@m_f", TextBox6.Text.Trim());
            cm.Parameters.AddWithValue("@d_id", TextBox7.Text.Trim());
            cm.Parameters.AddWithValue("@p_f", TextBox8.Text.Trim());
            cm.Parameters.AddWithValue("@vp_f", TextBox9.Text.Trim());
            cm.Parameters.AddWithValue("@pass", TextBox10.Text.Trim());
            cm.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Student Executive Added Successfully');</script>");  
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

            SqlCommand cmd = new SqlCommand("select * from student_executive where student_executive_id='" + TextBox1.Text.Trim() + "'", conn);
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