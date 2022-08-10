using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Individual_R : System.Web.UI.Page
{
    string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(conStr);
        conn.Open();
        SqlCommand cm;
        string E_N = TextBox1.Text;
        string I_N = TextBox2.Text;
        string A_ID = TextBox3.Text;
        string P_Nam = TextBox4.Text;
        string P_E = TextBox5.Text;
        string CN = TextBox6.Text;
        string Cont = TextBox7.Text;
        cm = new SqlCommand("INSERT INTO participant(participant_name,participant_email,participant_cnic,contact,event_name) VALUES(@P_Nam,@P_E,@CN,@Cont,@E_N)", conn);
        cm.Parameters.AddWithValue("@P_Nam", TextBox4.Text.Trim());
        cm.Parameters.AddWithValue("@P_E", TextBox5.Text.Trim());
        cm.Parameters.AddWithValue("@CN", TextBox6.Text.Trim());
        cm.Parameters.AddWithValue("@Cont", TextBox7.Text.Trim());
        cm.Parameters.AddWithValue("@E_N", TextBox1.Text.Trim());
        cm.ExecuteNonQuery();
        Response.Write("<script>alert('Participant Added Successfully');</script>");
        conn.Close();
    }
}