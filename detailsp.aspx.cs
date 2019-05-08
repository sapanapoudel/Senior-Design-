using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;using System.Configuration;
using System.Text;
public partial class detailsp : System.Web.UI.Page
{

    string pic;
    protected void Page_Load(object sender, EventArgs e)
    {
        double dis=0,orgcost = 0;
        SqlConnection myconn;
        SqlCommand mycomm;
         myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        string q = "SELECT * from addproduct WHERE (productid = @pid)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pid", Request.QueryString["pid"]);
        myconn.Open();
        SqlDataReader myreader = mycomm.ExecuteReader();
        if (myreader.HasRows)
        {
            myreader.Read();
            Label5.Text = myreader["productname"].ToString();
            Label7.Text = myreader["rate"].ToString();
            orgcost = Convert.ToDouble(myreader["rate"].ToString());
            dis = Convert.ToDouble(myreader["discount"].ToString());
            Label8.Text = "(" + myreader["discount"].ToString() + "% Discount)";
            Label3.Text = myreader["description"].ToString();
            pic = myreader["productimage"].ToString();
            Image1.ImageUrl = "uploads/" + myreader["productimage"].ToString();
        }

        double namt = orgcost- ((dis * orgcost) / 100);
        Label2.Text = Math.Truncate(namt).ToString();

        myreader.Close();
        myreader.Dispose();
        myconn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["un"] != null)
        {
         
            int r, q, tcost;
            r = Convert.ToInt32(Label2.Text);
            q = Convert.ToInt32(DropDownList2.SelectedValue);
            tcost = r * q;
          
                SqlConnection myconn;
                SqlCommand mycomm;
                 myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
                string s = "insert into addcart values(@pic,@pname,@rate,@qt,@total,@un,@pid)";
                mycomm = new SqlCommand(s, myconn);
                mycomm.Parameters.AddWithValue("@pic", pic);
                mycomm.Parameters.AddWithValue("@pname", Label5.Text);
                mycomm.Parameters.AddWithValue("@rate", Label2.Text);
                mycomm.Parameters.AddWithValue("@qt", DropDownList2.SelectedItem.ToString());
                mycomm.Parameters.AddWithValue("@total", tcost);
                mycomm.Parameters.AddWithValue("@un", Session["un"].ToString());
                mycomm.Parameters.AddWithValue("@pid", Request.QueryString["pid"]);
                myconn.Open();
                mycomm.ExecuteNonQuery();
                myconn.Close();
                Response.Redirect("addcart.aspx");

            
        }
        else
        {
            Response.Redirect("login.aspx?returnurl=detailsp.aspx?pid=" + Request.QueryString["pid"]);
        }
    }

}
    
