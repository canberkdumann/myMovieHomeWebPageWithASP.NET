using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string roles = Session["roles"].ToString(); // "Admin,Super,Moderator"
        

        if (!roles.Contains("Admin"))
        {
            bwModerator.Visible = false;
            bookModerator.Visible = false;
            artModerator.Visible = false;
            answerModerator.Visible = false;
        }
        else
        {
            bwModerator.Visible = true;
            bookModerator.Visible = true;
            artModerator.Visible = true;
            answerModerator.Visible = true;
        }
       
    }
}
