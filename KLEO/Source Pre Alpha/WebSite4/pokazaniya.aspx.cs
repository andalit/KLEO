using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using MySql.Data.MySqlClient;
using System.Configuration;




public partial class pokazaniya : System.Web.UI.Page
{
  //private string id_user = "100";

    static string GetSessionValue(string key)
    {
        if (HttpContext.Current == null)
            return "0";
        var httpSessionStateBase = new HttpContextWrapper(HttpContext.Current).Session;
        if (httpSessionStateBase != null && httpSessionStateBase[key] != null)
            return httpSessionStateBase[key].ToString();
        return "0";
    }
    protected void Page_Load(object sender, EventArgs e)
    {




        if (!IsPostBack)
       {

            Sql_insert_pokazaniya.SelectParameters["id_user"].DefaultValue =  GetSessionValue("user_id");


            //  Sql_insert_pokazaniya.SelectParameters["@id_user"].DefaultValue = "100";
            //ControlParameter parameter1 = new ControlParameter("Date", "RadDatePicker1", "SelectedDate");
            //SqlDataSource1.SelectParameters.Add(parameter1);
            //    Sql_insert_pokazaniya.SelectParameters.Add("@id_user", TypeCode.Int32, "100");
            //   SqlDataSource1.SelectParameters["@id_user"].DefaultValue = "100";
            //     SqlDataSource1.SelectParameters["id_user"].DefaultValue = "100";
            //  SqlDataSource1.SelectParameters.UpdateValues("@id_user", SqlDataSource1);



            //      ASPxGridView1.StartEdit(1);
            //      DataTable link_build = model_sql.sql_pokzaniya();
            //      DataTable tmp_table = link_build;
            // tmp_table.Columns.Add("CustLName", typeof(String));
            //      ASPxGridView1.DataSource = link_build;
            //      ASPxGridView1.DataBind();


            //      SqlDataSource1.Update();
            //    SqlDataSource1.SelectParameters.Clear();
        }

        // SqlDataSource1.SelectParameters.Add(new Parameter("id_user", TypeCode.Int32, "100"));

        // 
    }

   

     protected void ASPxGridView1_PageIndexChanged1(object sender, EventArgs e)
    {
   
    }

    protected void ASPxGridView1_PageSizeChanged1(object sender, EventArgs e)
    {
      
    }





 


    
}


 