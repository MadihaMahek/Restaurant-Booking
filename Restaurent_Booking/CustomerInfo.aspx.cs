using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

public partial class CreateCustome : System.Web.UI.Page
{
    string constrn = ConfigurationManager.ConnectionStrings["restconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
         using (MySqlConnection con1 = new MySqlConnection(constrn))
            {
                if (Session["customerID"] != null)
                {
                    using (MySqlCommand cmd1 = new MySqlCommand("select ItemName,Qty,Price,service  from mt_order where customerID="+Convert.ToInt16(Session["customerID"])+""))
                    {
                        using (MySqlDataAdapter sda = new MySqlDataAdapter())
                        {
                            cmd1.Connection = con1;
                            sda.SelectCommand = cmd1;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                Repeater1.DataSource = dt;
                                Repeater1.DataBind();

                            }
                        }
                    }
                }
            }




        }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CreateOrder.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/OrderPlaced.aspx");
    }
}
