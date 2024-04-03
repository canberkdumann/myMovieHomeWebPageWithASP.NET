using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;
using System.Data.SqlClient;

public partial class addbooks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      /*  //login kontrol
        if (Session["roles"]==null) {
            Response.Redirect("default3.aspx");
            return;
        }
        // rol kont.
        string roles = Session["roles"].ToString(); // "Admin,Super,Moderator"
        if (!roles.Contains("Admin"))
        {
            Response.Redirect("default3.aspx");
            return;
        }
        if (!roles.Contains("User"))
        {
           
            Response.Redirect(Request.RawUrl);
            return;
        }                                             */

    }

    string uzanti = "";
    string imagename = "";




    protected void BtnnAdd_Click(object sender, EventArgs e)
    {
        if (fuuImage.HasFile)
        {
            uzanti = Path.GetExtension(fuuImage.PostedFile.FileName);
            imagename = (txtBookName.Text) + "_book_" + DateTime.Now.Day + uzanti;
            imagename = (txtAuthor.Text) + "_author_" + DateTime.Now.Day + uzanti;
            imagename = (txtPage.Text) + "_page_" + DateTime.Now.Day + uzanti;
            imagename = (txtGenres.Text) + "_genres_" + DateTime.Now.Day + uzanti;
            imagename = (txtPublish.Text) + "_publishdate_" + DateTime.Now.Day + uzanti;
            imagename = (txtSummary.Text) + "_summary_" + DateTime.Now.Day + uzanti;
            
            imagename = (txtUzanti.Text) + "_uzanti_" + DateTime.Now.Day + uzanti;
            fuuImage.SaveAs(Server.MapPath("~/books/sahte" + uzanti));


            int Donusturme = 640;

            Bitmap bmp = new Bitmap(Server.MapPath("~/books/sahte" + uzanti));
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
                    yeniresim.Save(Server.MapPath("~/books/" + imagename));

                    yeniresim.Dispose();
                    OrjinalResim.Dispose();
                    bmp.Dispose();


                }
                else
                {
                    fuuImage.SaveAs(Server.MapPath("~/books/" + imagename));
                }
            }
            FileInfo figecici = new FileInfo(Server.MapPath("~/books/sahte" + uzanti));
            figecici.Delete();



            SqlConnection cnn = new SqlConnection(@"Data Source=CANBERKPC\SQLEXPRESS; Initial Catalog=Web1; Integrated Security = SSPI;");
            cnn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [books](book,author,page,genres,publishdate,summary,uzanti,poster) VALUES(@book,@author,@page,@genres,@publishdate,@summary,@uzanti,@poster)", cnn);
            cmd.Parameters.AddWithValue("@book", txtBookName.Text.ToString());
            cmd.Parameters.AddWithValue("@author", txtAuthor.Text.ToString());
            cmd.Parameters.AddWithValue("@page", txtPage.Text.ToString());
            cmd.Parameters.AddWithValue("@genres", txtGenres.Text.ToString());
            cmd.Parameters.AddWithValue("@publishdate", txtPublish.Text.ToString());
            cmd.Parameters.AddWithValue("@summary", txtSummary.Text.ToString());
            
            cmd.Parameters.AddWithValue("@uzanti", txtUzanti.Text.ToString());
            cmd.Parameters.AddWithValue("@poster", imagename);

            cmd.ExecuteNonQuery();
            cnn.Close();

            Label1.Text = "You have successfully added";
            txtBookName.Text = "";
            txtAuthor.Text = "";
            txtPage.Text = "";
            txtGenres.Text = "";
            txtPublish.Text = "";
            txtSummary.Text = "";
           
            txtUzanti.Text = "";

        }
    }
}