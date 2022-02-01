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

public partial class login : System.Web.UI.Page
{
    string constrn = ConfigurationManager.ConnectionStrings["restconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDrop();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        using (MySqlConnection con = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd = new MySqlCommand("INSERT INTO mt_order(ItemName,Qty,Price,service,customerID) VALUES (@ItemName,@Qty,@Price,@service,@customerID)"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    string  servicetype = "Take Home";
                    if (diein.Checked)
                    {
                        servicetype = "Die-In";

                    }
                    cmd.Parameters.AddWithValue("@ItemName", drpitem.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@Qty",Convert.ToInt16( drpqty.SelectedItem.Text));
                    cmd.Parameters.AddWithValue("@Price", Convert.ToInt16(txtprice.Text));
                    cmd.Parameters.AddWithValue("@service", servicetype);
                    cmd.Parameters.AddWithValue("@customerID", drpcustomer.SelectedItem.Value);

                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Session["customerID"] = drpcustomer.SelectedItem.Value;
                    Response.Redirect("~/CustomerInfo.aspx");

                }
            }

        }
    }
  
    private void BindDrop()
    {

        using (MySqlConnection con1 = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select Distinct ItemName from  mt_menu"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd1.Connection = con1;
                    sda.SelectCommand = cmd1;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        drpitem.DataSource = dt;
                        drpitem.DataTextField = "ItemName";
                        drpitem.DataValueField = "ItemName";
                        drpitem.DataBind();

                    }
                }
            }

            using (MySqlCommand cmd1 = new MySqlCommand("select Distinct id,FirstName from  mt_customer"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd1.Connection = con1;
                    sda.SelectCommand = cmd1;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        drpcustomer.DataSource = dt;
                        drpcustomer.DataTextField = "FirstName";
                        drpcustomer.DataValueField = "id";
                        drpcustomer.DataBind();

                    }
                }
            }
        }


    }
}