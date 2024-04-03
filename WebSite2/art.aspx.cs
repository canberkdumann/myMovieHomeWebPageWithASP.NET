using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;
using System.Data.SqlClient;

public partial class art : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    string uzanti = "";
    string imagename = "";




    protected void BtnnAdd_Click(object sender, EventArgs e)
    {
        if (fuuImage.HasFile)
        {
            uzanti = Path.GetExtension(fuuImage.PostedFile.FileName);
            imagename = (txtMovieName.Text) + "_moviename_" + DateTime.Now.Day + uzanti;
            imagename = (txtPaint.Text) + "_paintingtitle_" + DateTime.Now.Day + uzanti;
            imagename = (txtAuthor.Text) + "_author_" + DateTime.Now.Day + uzanti;
            imagename = (txtCreate.Text) + "_date_" + DateTime.Now.Day + uzanti;
            imagename = (txtCountry.Text) + "_country_" + DateTime.Now.Day + uzanti;
            imagename = (txtActor.Text) + "_actors_" + DateTime.Now.Day + uzanti;
            imagename = (txtTime.Text) + "_timeofscene_" + DateTime.Now.Day + uzanti;
            imagename = (txtDesc.Text) + "_description_" + DateTime.Now.Day + uzanti;
            imagename = (txtUzanti.Text) + "_uzanti_" + DateTime.Now.Day + uzanti;
            fuuImage.SaveAs(Server.MapPath("~/art/sahte" + uzanti));


            int Donusturme = 640;

            Bitmap bmp = new Bitmap(Server.MapPath("~/art/sahte" + uzanti));
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
                    yeniresim.Save(Server.MapPath("~/art/" + imagename));

                    yeniresim.Dispose();
                    OrjinalResim.Dispose();
                    bmp.Dispose();


                }
                else
                {
                    fuuImage.SaveAs(Server.MapPath("~/art/" + imagename));
                }
            }
            FileInfo figecici = new FileInfo(Server.MapPath("~/art/sahte" + uzanti));
            figecici.Delete();



            SqlConnection cnn = new SqlConnection(@"Data Source=CANBERKPC\SQLEXPRESS; Initial Catalog=Web1; Integrated Security = SSPI;");
            cnn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [art](moviename,paintingtitle,author,date,country,actors,timeofscene,description,uzanti,poster) VALUES(@moviename,@paintingtitle,@author,@date,@country,@actors,@timeofscene,@description,@uzanti,@poster)", cnn);
            cmd.Parameters.AddWithValue("@moviename", txtMovieName.Text.ToString());
            cmd.Parameters.AddWithValue("@paintingtitle", txtPaint.Text.ToString());
            cmd.Parameters.AddWithValue("@author", txtAuthor.Text.ToString());
            cmd.Parameters.AddWithValue("@date", txtCreate.Text.ToString());
            cmd.Parameters.AddWithValue("@country", txtCountry.Text.ToString());
            cmd.Parameters.AddWithValue("@actors", txtActor.Text.ToString());
            cmd.Parameters.AddWithValue("@timeofscene", txtTime.Text.ToString());
            cmd.Parameters.AddWithValue("@description", txtDesc.Text.ToString());
            cmd.Parameters.AddWithValue("@uzanti", txtUzanti.Text.ToString());
            cmd.Parameters.AddWithValue("@poster", imagename);

            cmd.ExecuteNonQuery();
            cnn.Close();

            Label1.Text = "You have successfully added";
            txtMovieName.Text = "";
            txtPaint.Text = "";
            txtAuthor.Text = "";
            txtCreate.Text = "";
            txtCountry.Text = "";
            txtActor.Text = "";
            txtTime.Text = "";
            txtDesc.Text = "";
            txtUzanti.Text = "";

        }
    }
}