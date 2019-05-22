using System;


public partial class Temperatura : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadData();
            //     RadGrid1.DataBind();
            // RadGrid1.MasterTableView.Columns[0].HeaderStyle.Width = System.Web.UI.WebControls.Unit.Pixel(50);
        //    mySQL_qwery.SelectCommand = "SELECT `date` AS Дата, value AS Температура FROM wather WHERE (TO_DAYS(NOW()) - TO_DAYS(`date`)  = 3 )";
        }
    }

    private void LoadData()
    {
    //    DataTable link_build = model_sql.sql_temperatura();
    //    DataTable tmp_table = link_build;
        //     tmp_table.Columns.Add("CustLName", typeof(String));
     //   RadGrid1.DataSource = link_build;
     //   RadGrid1.DataBind();
       
       
    }

}