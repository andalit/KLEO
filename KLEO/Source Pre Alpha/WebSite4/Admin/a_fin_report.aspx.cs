using System;
using System.Web;


public partial class a_fin_report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        mySQL_user_FinReport.SelectParameters["id_user"].DefaultValue = GetSessionValue("user_id");
    }



    static string GetSessionValue(string key)
    {
        if (HttpContext.Current == null)
            return "0";
        var httpSessionStateBase = new HttpContextWrapper(HttpContext.Current).Session;
        if (httpSessionStateBase != null && httpSessionStateBase[key] != null)
            return httpSessionStateBase[key].ToString();
        return "0";
    }
}