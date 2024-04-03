using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;

public partial class unknown : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(@"Data Source=CANBERKPC\SQLEXPRESS; Initial Catalog=Web1; Integrated Security = SSPI;");
    protected void Page_Load(object sender, EventArgs e)
    {

        /*SqlCommand cmd = new SqlCommand("SELECT * FROM [moviefacts]", cnn);
        cnn.Open();   

        SqlDataReader dr = cmd.ExecuteReader();

        Repeater2.DataSource = dr;
        Repeater2.DataBind();

        cnn.Close();*/
    }
}