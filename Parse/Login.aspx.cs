using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parse;
using System.Threading.Tasks;
using System.Threading;
public partial class Login : System.Web.UI.Page
{
    private bool _refreshState;
    private bool _isRefresh;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
        diverror.Visible = false;
    
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
    protected async void btnlogin_Click(object sender, EventArgs e)
    {
        if (!_isRefresh)
        {

            try
            {
                await login();
                Response.Redirect("Default.aspx");
            }
            catch (ParseException ex)
            {
                
                    if (ex.Code == ParseException.ErrorCode.ObjectNotFound)
                    {
                        diverror.Visible = true;
                        lblerror.Visible = true;
                        lblerror.Text = "Wrong Username and Password.....";
                       
                    }
                }
               
            
        }
        else
        {
            diverror.Visible = false;
            lblerror.Visible = false;
            username.Value = "";
        }
    }
   public async Task login()
    {
        string uname =username.Value;
        string pwd = password.Value;
        await ParseUser.LogInAsync(uname, pwd);
       
       
      
    }
}