using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;




public partial class _default : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(@"Data Source=CANBERKPC\SQLEXPRESS; Initial Catalog=Web1; Integrated Security = SSPI;");
    protected void Page_Load(object sender, EventArgs e)
    {
        NewMethod();

        object user = Session["username"];
        if (user != null)
        {
            pnlLogin.Visible = false;
            pnlUser.Visible = true;
            lblUserName.Text = user.ToString();
        }
        else
        {
            pnlUser.Visible = false;
            pnlLogin.Visible = true;
            
        }
    }

    private void NewMethod()
    {
        



        SqlCommand cmd = new SqlCommand("SELECT * FROM [TopNews] ORDER BY [Date]", cnn);
        cnn.Open();

        SqlDataReader dr = cmd.ExecuteReader();

        lstNew.DataSource = dr;
        lstNew.DataBind();

        cnn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string path = Path.GetFileName(FileUpload1.FileName);
            path = path.Replace(" ", "");
            FileUpload1.SaveAs(Server.MapPath("~/mp3file/") + path);
            String link = "mp3file/" + path;
            link = "<audio Controls><Source src=" + link + " type=audio/mpeg></video>";
            Literal1.Text = link;
            Label2.Text = "File Has Been Uploaded Successfully";

        }
        else
        {
            Label2.Text = "Kindly Select Mp3 File on Your PC For Upload First";

        }

    }

    protected void BtnSignUp_Click(object sender, EventArgs e)
    {

        if (txtUserName.Text != "" && txtPassword.Text != "")
        {



            SqlConnection cnn = new SqlConnection(@"Data Source=CANBERKPC\SQLEXPRESS; Initial Catalog=Web1; Integrated Security = SSPI;");



            SqlCommand cmd = new SqlCommand("INSERT INTO [User](UserName,Password,Roles) VALUES (@UserName,@Password,@Roles)", cnn);
            cnn.Open();


            try
            {
                cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@Roles", "User");
                cmd.ExecuteNonQuery();
                cnn.Close();


                lblResult.Text = "Your registration has been successfully completed.";
            }
            catch (Exception x)
            {
                lblResult.Text = "Your registration could not be done.";



            }




        }


        else
        {
            lblResult.Text = "You must fill in blank fields.";
        }







    }



    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        string query = "SELECT * FROM [User] WHERE  UserName = @UserName AND Password = @Password";
        
        SqlCommand cmd = new SqlCommand(query, cnn);
        cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
        cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
       



        cnn.Open();

        SqlDataReader dr = cmd.ExecuteReader();

       

        if (dr.Read())
        {
            Session.Timeout = 500;
            Session.Add("username", dr["UserName"].ToString());
            Session.Add("roles", dr["Roles"].ToString());
            Response.Redirect(Request.RawUrl);
        }
        else
        {
            lblResult.Text = "User login could not be provided";
        }


        cnn.Close();
    }

    protected void btnExit_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect(Request.RawUrl);
    }


}