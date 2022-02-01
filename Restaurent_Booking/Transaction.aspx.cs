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

public partial class Transaction : System.Web.UI.Page
{
    string constrn = ConfigurationManager.ConnectionStrings["netbankingconnstring"].ConnectionString;
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
            string selected = "";
            if (Transfer.Checked)
            {
                selected = "Transfer";
            }
            else if (WithDraw.Checked)
            {
                selected = "WithDraw";
            }
            else
            {
                selected = "Deposit";
            }

            using (MySqlCommand cmd = new MySqlCommand("INSERT INTO tr_tran(trantype,accfrom,toacc,amount) VALUES (@trantype,@accfrom,@toacc,@amount)"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Parameters.AddWithValue("@trantype", selected);
                    cmd.Parameters.AddWithValue("@accfrom", dpfrom.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@toacc", drpto.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@amount", Convert.ToInt16(TextBox1.Text));
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Label1.Text = "Tranfered successfully..";
                    con.Close();

                    Response.Redirect("~/CustomerInfo.aspx");

                }
            }

        }


    }



    private void BindDrop()
    {

        using (MySqlConnection con1 = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select Distinct AccountNo from  tr_account"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd1.Connection = con1;
                    sda.SelectCommand = cmd1;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        dpfrom.DataSource = dt;
                        dpfrom.DataTextField = "AccountNo";
                        dpfrom.DataValueField = "AccountNo";
                        dpfrom.DataBind();

                        drpto.DataSource = dt;
                        drpto.DataTextField = "AccountNo";
                        drpto.DataValueField = "AccountNo";
                        drpto.DataBind();

                    }
                }
            }
        }


    }
}