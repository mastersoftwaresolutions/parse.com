using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parse;
using System.Threading;

public partial class Signup : System.Web.UI.Page
{
   
    private bool _refreshState;
    private bool _isRefresh;
    protected void Page_Load(object sender, EventArgs e)
    {
       
            diverror.Visible = false;
            lblerror.Visible = false;
         
     }

    protected override void LoadViewState(object savedState)
    {
        object[] AllStates = (object[])savedState;
        base.LoadViewState(AllStates[0]);
        _refreshState = bool.Parse(AllStates[1].ToString());
        _isRefresh = _refreshState == bool.Parse(Session["__ISREFRESH"].ToString());
    }

    protected override object SaveViewState()
    {
        Session["__ISREFRESH"] = _refreshState;
        object[] AllStates = new object[2];
        AllStates[0] = base.SaveViewState();
        AllStates[1] = !(_refreshState);
        return AllStates;
    }

    protected async void btnSubmit_Click(object sender, EventArgs e)
    {
        if (!_isRefresh)
        {
            try
            {

                ParseUser newuser = new ParseUser();
                newuser["Fullname"] = Request["fullname"];
                newuser.Username = Request["username"];
                newuser.Password = Request["password"];
                newuser.Email = Request["email"];
                newuser["ConfirmPassword"] = Request["cpassword"];
                await newuser.SignUpAsync();
                Response.Redirect("sucess.aspx");

            }
            catch (ParseException ex)
            {

                if (ex.Code == ParseException.ErrorCode.UsernameTaken)
                {

                    diverror.Visible = true;
                    lblerror.Visible = true;
                    lblerror.Text = "Username already registered";
                }
                else if (ex.Code == ParseException.ErrorCode.EmailTaken)
                {
                    diverror.Visible = true;
                    lblerror.Visible = true;
                    lblerror.Text = "Emailid already registered";

                }
            }

        }
        else
        {

            diverror.Visible = false;
            lblerror.Visible = false;
            
        }
    }
}