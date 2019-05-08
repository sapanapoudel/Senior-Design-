using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["nm"] == null)
        {
            Label1.Text = "Guest";
            LinkButton4.Visible = true;
            LinkButton5.Visible = true;
        }
        else
        {
            Label1.Text = Session["nm"].ToString(); //reading from session
            LinkButton2.Visible = true;
            LinkButton3.Visible = true;
            LinkButton6.Visible = true;
            if (Session["ut"].ToString() == "admin")
            {
                LinkButton1.Visible = true;
                LinkButton2.Visible = false;
            }
        }
        if (Session["un"] != null)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
            string q = "select count(cartid) as cnt from addcart where username=@un";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@un", Session["un"].ToString());
            myconn.Open();
            SqlDataReader myreader;
            myreader = mycomm.ExecuteReader();
            if (myreader.HasRows)
            {
                myreader.Read();
                if (Session["ut"].ToString() == "normal")
                {
                    LinkButton7.Visible = true;
                    LinkButton7.Text = "Show Cart(" + myreader["cnt"].ToString() + ")";
                }
                else
                {
                    LinkButton7.Text = "";

                }
            }
            else
            {
                LinkButton4.Visible = true;
            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminpanel.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("orderhistory.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("changepassword.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("addcart.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("globalsearch.aspx?s=" + TextBox1.Text);
    }
}
