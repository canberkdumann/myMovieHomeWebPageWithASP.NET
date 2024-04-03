using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Drawing;
using System.Data.SqlClient;

public partial class addmovie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    string uzanti = "";
    string imagename = "";

    SqlConnection cnn = new SqlConnection(@"Data Source=CANBERKPC\SQLEXPRESS; Initial Catalog=Web1; Integrated Security = SSPI;");

    bool situation;

    void Repeat()
    {
        cnn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM [Movies1] WHERE moviename=@moviename ", cnn);
        cmd.Parameters.AddWithValue("@moviename", txtMovieName.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            situation = false;
        }
        else
        {
            situation = true;
        }
        cnn.Close();
    }


    protected void BtnAdd_Click(object sender, EventArgs e)
    {


        if (fuImage.HasFile)
        {
            uzanti = Path.GetExtension(fuImage.PostedFile.FileName);
            imagename = (txtMovieName.Text) + "_moviename_" + DateTime.Now.Day + uzanti;
            imagename = (txtYear.Text) + "_year_" + DateTime.Now.Day + uzanti;
            imagename = (txtGenres.Text) + "_genres_" + DateTime.Now.Day + uzanti;
            imagename = (txtDirector.Text) + "_director_" + DateTime.Now.Day + uzanti;
            imagename = (txtCast.Text) + "_cast_" + DateTime.Now.Day + uzanti;
            imagename = (txtRank.Text) + "_imdbrank_" + DateTime.Now.Day + uzanti;
            imagename = (txtPrice.Text) + "_dvdprice_" + DateTime.Now.Day + uzanti;
            imagename = (txtSummary.Text) + "_summary_" + DateTime.Now.Day + uzanti;
            fuImage.SaveAs(Server.MapPath("~/movies2/sahte" + uzanti));


            int Donusturme = 640;

            Bitmap bmp = new Bitmap(Server.MapPath("~/movies2/sahte" + uzanti));
            using (Bitmap OrjinalResim = bmp)
            {
                double ResYukseklik = OrjinalResim.Height;
                double ResGenislik = OrjinalResim.Width;
                double oran = 0;

                if (ResGenislik >= Donusturme)
                {
                    oran = ResGenislik / ResYukseklik;
                    ResGenislik = Donusturme;
                    ResYukseklik = Donusturme / oran;

                    Size yenidegerler = new Size(Convert.ToInt32(ResGenislik), Convert.ToInt32(ResYukseklik));
                    Bitmap yeniresim = new Bitmap(OrjinalResim, yenidegerler);
                    yeniresim.Save(Server.MapPath("~/movies2/" + imagename));

                    yeniresim.Dispose();
                    OrjinalResim.Dispose();
                    bmp.Dispose();


                }
                else
                {
                    fuImage.SaveAs(Server.MapPath("~/movies2/" + imagename));
                }
            }
            FileInfo figecici = new FileInfo(Server.MapPath("~/movies2/sahte" + uzanti));
            figecici.Delete();


            Repeat();
            if (situation == true)
            {


                SqlConnection cnn = new SqlConnection(@"Data Source=CANBERKPC\SQLEXPRESS; Initial Catalog=Web1; Integrated Security = SSPI;");
            cnn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [Movies1](moviename,year,genres,director,cast,imdbranking,dvdprice,summary,poster1) VALUES(@moviename,@year,@genres,@director,@cast,@imdbranking,@dvdprice,@summary,@poster1)", cnn);
            cmd.Parameters.AddWithValue("@moviename", txtMovieName.Text.ToString());
            cmd.Parameters.AddWithValue("@year", txtYear.Text.ToString());
            cmd.Parameters.AddWithValue("@genres", txtGenres.Text.ToString());
            cmd.Parameters.AddWithValue("@director", txtDirector.Text.ToString());
            cmd.Parameters.AddWithValue("@cast", txtCast.Text.ToString());
            cmd.Parameters.AddWithValue("@imdbranking", txtRank.Text.ToString());
            cmd.Parameters.AddWithValue("@dvdprice", txtPrice.Text.ToString());
            cmd.Parameters.AddWithValue("@summary", txtSummary.Text.ToString());
            cmd.Parameters.AddWithValue("@poster1", imagename);

            cmd.ExecuteNonQuery();
            cnn.Close();

            Label1.Text = "You have successfully added";
            txtMovieName.Text = "";
            txtYear.Text = "";
            txtGenres.Text = "";
            txtDirector.Text = "";
            txtCast.Text = "";
            txtRank.Text = "";
            txtPrice.Text = "";
            txtSummary.Text = "";
        }
            else
            {
                Label1.Text = "This movie was previously added to your archive, please enter another movie.";
            }

        }






    }
}