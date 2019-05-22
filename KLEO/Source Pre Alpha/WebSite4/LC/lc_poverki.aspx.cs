using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LC_lc_poverki : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        sql_poverki.SelectParameters["id_user"].DefaultValue = GetSessionValue("user_id");
   
    }



    static string GetSessionValue(string key)
    {
        if (HttpContext.Current == null)
            return "0";
        var httpSessionStateBase = new HttpContextWrapper(HttpContext.Current).Session;
        if (httpSessionStateBase != null && httpSessionStateBase[key] != null)
            return httpSessionStateBase[key].ToString();
        return "121";
    }

}