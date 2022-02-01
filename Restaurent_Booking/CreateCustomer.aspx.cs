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


public partial class CreateCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        prefix.Items.Add("Mr.");
        prefix.Items.Add("Mrs.");
        prefix.Items.Add("Miss.");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string constrn = ConfigurationManager.ConnectionStrings["restconnstring"].ConnectionString;
        using (MySqlConnection con = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd = new MySqlCommand("INSERT INTO mt_customer(prefix,FirstName,lastname,DOB,address,city,state,pincode,mobile,email) VALUES (@prefix,@FirstName,@lastname,@DOB,@address,@city,@state,@pincode,@mobile,@email)"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Parameters.AddWithValue("@prefix", prefix.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@FirstName", firstName.Text);
                    cmd.Parameters.AddWithValue("@lastname", lastName.Text);
                    cmd.Parameters.AddWithValue("@DOB", birth.Text);
                    cmd.Parameters.AddWithValue("@address", address.Text);
                    cmd.Parameters.AddWithValue("@city", city.Text);
                    cmd.Parameters.AddWithValue("@state", state.Text);
                    cmd.Parameters.AddWithValue("@pincode", pinCode.Text);
                    cmd.Parameters.AddWithValue("@mobile", mobile.Text);
                    cmd.Parameters.AddWithValue("@email", email.Text);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblmessage.Text = "customer added successfully..";
                    con.Close();
                    Response.Redirect("~/CreateOrder.aspx");


                }
            }

        }


    }
}