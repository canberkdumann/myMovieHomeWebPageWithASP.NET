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

public partial class addblackwhite : System.Web.UI.Page
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
            imagename = (txtMovieNamee.Text) + "_moviename_" + DateTime.Now.Day + uzanti;
            imagename = (txtSummaryy.Text) + "_summary_" + DateTime.Now.Day + uzanti;
            imagename = (txtUzantii.Text) + "_uzanti_" + DateTime.Now.Day + uzanti;
        
            fuuImage.SaveAs(Server.MapPath("~/blackwhite/sahte" + uzanti));


            int Donusturme = 640;

            Bitmap bmp = new Bitmap(Server.MapPath("~/blackwhite/sahte" + uzanti));
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
                    yeniresim.Save(Server.MapPath("~/blackwhite/" + imagename));

                    yeniresim.Dispose();
                    OrjinalResim.Dispose();
                    bmp.Dispose();


                }
                else
                {
                    fuuImage.SaveAs(Server.MapPath("~/blackwhite/" + imagename));
                }
            }
            FileInfo figecici = new FileInfo(Server.MapPath("~/blackwhite/sahte" + uzanti));
            figecici.Delete();



            SqlConnection cnn = new SqlConnection(@"Data Source=CANBERKPC\SQLEXPRESS; Initial Catalog=Web1; Integrated Security = SSPI;");
            cnn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [blackwhite](moviename,summary,uzanti,poster) VALUES(@moviename,@summary,@uzanti,@poster)", cnn);
            cmd.Parameters.AddWithValue("@moviename", txtMovieNamee.Text.ToString());
     
            cmd.Parameters.AddWithValue("@summary", txtSummaryy.Text.ToString());
            cmd.Parameters.AddWithValue("@uzanti", txtUzantii.Text.ToString());
            cmd.Parameters.AddWithValue("@poster", imagename);

            cmd.ExecuteNonQuery();
            cnn.Close();

            Label1.Text = "You have successfully added";
            txtMovieNamee.Text = "";
            txtSummaryy.Text = "";
            txtUzantii.Text = "";
        
        }



    }
}