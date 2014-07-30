using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Parse;

[ParseClassName("register")]
public class register:ParseObject

{
    [ParseFieldName("firstname")]
public string FirstName
    {
        get { return GetProperty<string>(); }
        set { SetProperty<string>(value); }

    }

    [ParseFieldName("lastname")]
    public string LastName
    {
        get { return GetProperty<string>(); }
        set
        {
            SetProperty<string>(value);
        }
    }
    [ParseFieldName("password")]
    public string Password
    {
        get { return GetProperty<string>(); }
        set
        {
            SetProperty<string>(value);
        }
    }
    [ParseFieldName("confirmpassword")]
    public string ConfirmPassword
    {
        get { return GetProperty<string>(); }
        set { SetProperty<string>(value); }

    }

    [ParseFieldName("username")]
    public string UserName
    {

        get { return GetProperty<string>(); }
        set { SetProperty<string>(value); }
    }



}