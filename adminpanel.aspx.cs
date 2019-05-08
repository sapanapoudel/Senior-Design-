using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminpanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["nm"] == null || Session["ut"] != "admin")
        {
            Response.Redirect("error.aspx");
        }
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Response.Redirect("addcat.aspx");
    }
    
    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        Response.Redirect("addproduct.aspx");
    }
   
    protected void LinkButton18_Click(object sender, EventArgs e)
    {
        Response.Redirect("updateproduct.aspx");
    }
   
    protected void LinkButton20_Click(object sender, EventArgs e)
    {
        Response.Redirect("vieworders.aspx");
    }
   
    protected void LinkButton21_Click1(object sender, EventArgs e)
    {
        Response.Redirect("listofmembers.aspx");
    }
    protected void LinkButton22_Click(object sender, EventArgs e)
    {
        Response.Redirect("default2.aspx");
    }
    protected void LinkButton23_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewmsgs.aspx");
    }
}