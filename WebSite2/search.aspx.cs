using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {


        }
    }

    protected void TxtSearch_Click(object sender, EventArgs e)
    {
        //Response.Redirect("search2.aspx?sentence"+ txtSentence.Text.Trim());
        string sentence = "'%" + txtSentence.Text.Trim() + "%'";//Request.QueryString["sentence"].ToString();

        SqlConnection cnn = new SqlConnection(@"Data Source=CANBERKPC\SQLEXPRESS; Initial Catalog=Web1; Integrated Security = SSPI;");
        cnn.Open();
        SqlDataAdapter da = new SqlDataAdapter("Select * From Movies1 where moviename like " + sentence + " OR [cast] like " + sentence + " OR [director] like " + sentence + " OR [genres] like " + sentence + " ORDER BY [imdbranking] DESC", cnn);
        
        //("SELECT * FROM Movies1 ORDER BY [imdbranking]")
        DataTable dt = new DataTable();
        da.Fill(dt);

        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
}