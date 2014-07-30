using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parse;

public partial class _Default : System.Web.UI.Page
{
    protected  void Page_Load(object sender, EventArgs e)
    {
        if(ParseUser.CurrentUser!=null)
        {
            var currentuser = ParseUser.CurrentUser.Username;
            lblusername.Text = currentuser.ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }

    }

    protected  void Log_out(object sender, EventArgs e)
    {
       ParseUser.LogOut();
       if(ParseUser.CurrentUser==null)
       {
           Response.Redirect("Login.aspx");
       }

    }
}