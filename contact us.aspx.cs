using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class css_contact_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        string q = "insert into contactus values(@name,@em,@ph,@msg,@dt)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@name", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@em", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@ph", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@msg", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@dt", DateTime.Now);
        
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Response.Write("<script>alert('Message sent Successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Message not sent Successfully')</script>");
        }
    }
}