using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;using System.Configuration;

public partial class addcart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null)
        {
            Response.Redirect("error.aspx");
        }
        else
        {
            fetchtotal();
           
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Label2.Font.Strikeout == true)
        {
            Session.Add("tamt", Label4.Text);
        }
        else
        {
            Session.Add("tamt", Label2.Text);
        }
        Response.Redirect("checkout.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("displaycategory.aspx");
    }

    void fetchtotal()
    {
        SqlConnection myconn;
        SqlCommand mycomm;
         myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);

        string q = "Select sum(total) from addcart where username=@un";
        mycomm = new SqlCommand(q, myconn);
        myconn.Open();
        mycomm.Parameters.AddWithValue("@un", Session["un"]);
        Object ans = mycomm.ExecuteScalar();

        Label2.Text = ans.ToString();
        myconn.Close();

    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
    
        Response.Redirect("addcart.aspx");
    }


    protected void SqlDataSource2_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        if(e.AffectedRows==0)
        {
            Panel1.Visible = false;
            Label5.Text = "There are no products in your cart, please add some";
        }
        else
        {
            Panel1.Visible = true;
            Label5.Text = "";
        }
    }
}