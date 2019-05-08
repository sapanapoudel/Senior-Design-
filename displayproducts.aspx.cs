using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;using System.Configuration;
using System.Text;
public partial class displayproducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Label pid = new Label();
        pid = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("lblprodid");
        if (Session["un"] != null)
        {
          
            if (e.CommandName == "item")
            {
                Label rt = new Label();
                rt = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label2");


               
                pid = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("lblprodid");


                LinkButton pname = new LinkButton();
                pname = (LinkButton)DataList1.Items[e.Item.ItemIndex].FindControl("LinkButton11");


                ImageButton prodpic = new ImageButton();
                prodpic = (ImageButton)DataList1.Items[e.Item.ItemIndex].FindControl("ImageButton1");
                string ppic = Path.GetFileName(prodpic.ImageUrl);

                int r, q, tcost;
                r = Convert.ToInt32(rt.Text);
                q = 1;
                tcost = r * q;

                SqlConnection myconn;
                SqlCommand mycomm;
                myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
                string s = "insert into addcart values(@pic,@pname,@rate,@qt,@total,@un,@pid)";
                mycomm = new SqlCommand(s, myconn);
                mycomm.Parameters.AddWithValue("@pic", ppic);
                mycomm.Parameters.AddWithValue("@pname", pname.Text);
                mycomm.Parameters.AddWithValue("@rate", rt.Text);
                mycomm.Parameters.AddWithValue("@qt", q);
                mycomm.Parameters.AddWithValue("@total", tcost);
                mycomm.Parameters.AddWithValue("@un", Session["un"].ToString());
                mycomm.Parameters.AddWithValue("@pid", pid.Text);
                myconn.Open();
                mycomm.ExecuteNonQuery();
                myconn.Close();
                Response.Redirect("addcart.aspx");

            }
        }
        else
        {
            Response.Redirect("login.aspx?returnurl=detailsp.aspx?pid=" + pid.Text);
        }
    }
 }
