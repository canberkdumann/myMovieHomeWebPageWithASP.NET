using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

public partial class contact1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        String today = DateTime.Now.ToLongDateString().ToString();
        String query = "INSERT INTO [Contact1](username,email,phonenumber,message,messagedate) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + today + "')";
        SqlConnection con = new SqlConnection(@"Data Source=CANBERKPC\SQLEXPRESS; Initial Catalog=Web1; Integrated Security = SSPI;");


       


        if (Session["gResim"].ToString() != txtSecurityCode.Value)
        {
            ClientScript.RegisterStartupScript(GetType(), "Alert", "alert('Your security code could not be verified!');", true);
            Label2.Text = "You entered the wrong security code, please try again!";
        }
        else{ 
        ClientScript.RegisterStartupScript(GetType(), "Alert", "alert('The security code has been entered correctly.');", true);
        Label2.Text = "Thanks for contact us,we will reach you very soon.";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}