using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.UI;
using WebSite4;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


public partial class Account_Login : Page
{
    List<string> cookis = new List<string>(); // list cookis  
    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterHyperLink.NavigateUrl = "Register";
     //   OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
        var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        if (!String.IsNullOrEmpty(returnUrl))
        {
            RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
        }
    }

    protected void LogIn(object sender, EventArgs e)
    {
        var id_acc = new model_sql().login_chek(UserName.Text, Password.Text);

        // ShowMessage(id_acc.ToString());



        if (id_acc > 0) // если такая учетка есть в базе mySQL и включена (получили ID учетки)
        {
            if (IsValid)
            {
                // Validate the user password
                var manager = new UserManager(); // модель
                ApplicationUser user = manager.Find(UserName.Text, Password.Text); // проверка авторизации
                if (user == null)
                {
                    autoreg(UserName.Text, Password.Text);
                }

                HttpContext.Current.Session["user_id"] = id_acc;  // Заполним сессию пройденной авторизации номер аккаунта
                Session["userName"] = id_acc;
             //   bool isSessionNew = Session.IsNewSession;
             // string sessionId = Session.SessionID;
             //   string userName = Session["userName"].ToString();
             //   var ttt = Session["user_id"].ToString();

           

                IdentityHelper.SignIn(manager, user, RememberMe.Checked);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);

            }
        }


        else // иначе такой учетки нет
        {
            FailureText.Text = "Вы ввели неверный логин или пароль";
            ErrorMessage.Visible = true; // отобразить ошибку текст ошибки - выше
        }
        //  if (IsValid)
        //     {
        // Validate the user password
        //          var manager = new UserManager(); // модель 
        //          ApplicationUser user = manager.Find(UserName.Text, Password.Text); // проверка авторизации
        //          if (user != null)
        //          {
        //              IdentityHelper.SignIn(manager, user, RememberMe.Checked);
        //              IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        //           }
        //           else
        //           {
        //               FailureText.Text = "Вы ввели неверный логин или пароль";
        //                ErrorMessage.Visible = true; // отобразить ошибку текст ошибки - выше
        //            }
        //        }
    }

    public void autoreg(string login, string pass)  // andalit 
    {
        var manager = new UserManager();
        var user = new ApplicationUser() { UserName = login };
        IdentityResult result = manager.Create(user, pass);
        if (result.Succeeded)
        {
            IdentityHelper.SignIn(manager, user, isPersistent: false);
            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        }

        else
        {
            FailureText.Text = "не получилось зарегать в стат базе";
            ErrorMessage.Visible = true; // отобразить ошибку текст ошибки - выше
        }

    }

    void ShowMessage(string msg)
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
    }
}