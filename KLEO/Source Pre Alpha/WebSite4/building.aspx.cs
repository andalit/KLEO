using System;
using System.Web;

 

public partial class building : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            SqlDataSource1.SelectParameters["id_user"].DefaultValue = GetSessionValue("user_id");
            //      LoadData();
            //      RadGrid1.DataBind();
        }
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