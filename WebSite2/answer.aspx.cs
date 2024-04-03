using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;



public partial class answer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void Send_Click(object sender, EventArgs e)
    {

        String from_mail = "cannduman98@gmail.com";
        MailMessage message = new MailMessage(from_mail, to.Text , subject.Text, from.Text + "\n" + body.Text);
        SmtpClient client = new SmtpClient("smtp.gmail.com" , 587);
        client.EnableSsl = true;
        client.Credentials = new System.Net.NetworkCredential(from_mail, "");
        client.Send(message);
        status.Text = "Mail was sent successfully!";

        try
        {
        }
        catch (Exception ex) {

            status.Text = ex.StackTrace;




        }
    }
}
