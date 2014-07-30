using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parse;
public partial class forgot_password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        emailsucess.Visible = false;

    }
    protected  void btnReset_Click(object sender, EventArgs e)
    {
        string useremail = Request["useremail"];
        try
        {
             ParseUser.RequestPasswordResetAsync(useremail);
             emailsucess.Visible = true;
             emailmessage.Visible = false;
        }
        catch(ParseException ex)
        {

        }
    }
}