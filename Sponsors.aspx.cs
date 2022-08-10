using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sponsors : System.Web.UI.Page
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
        string C_N = TextBox1.Text;
        string Nam = TextBox2.Text;
        string CN = TextBox3.Text;
        string Cat = TextBox4.Text;
        cm = new SqlCommand("INSERT INTO company(company_name,R_name,CNIC,Category) values(@C_N,@Nam,@CN,@Cat)", conn);
        cm.Parameters.AddWithValue("@C_N", TextBox1.Text.Trim());
        cm.Parameters.AddWithValue("@Nam", TextBox2.Text.Trim());
        cm.Parameters.AddWithValue("@CN", TextBox3.Text.Trim());
        cm.Parameters.AddWithValue("@Cat", TextBox4.Text.Trim());
        cm.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('Sponsor Added Successfully');</script>");
    }
}