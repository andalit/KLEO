using DevExpress.Web;
using DevExpress.WebUtils;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 
public partial class Tarif : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

  
    protected void BootstrapButton1_Click(object sender, EventArgs e)
    {

 
        // int counter = 704;

        DateTime totaltime = DateTime.Now;
        
        NumberFormatInfo nfi_e = new CultureInfo("en-US", false).NumberFormat; //для изменения запятой на точку


        MySqlConnection conn =  new MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString); // конект к скл
        try
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            //выбоорка номеров счетчиков
            string sql_counters = "SELECT `id_countres` FROM `pokazaniya`  GROUP BY `id_countres` ORDER BY `id_countres`;";
            MySqlCommand command_counters = new MySqlCommand(sql_counters, conn);
            MySql.Data.MySqlClient.MySqlDataAdapter AdapterP_counter = new MySql.Data.MySqlClient.MySqlDataAdapter();
            AdapterP_counter.SelectCommand = command_counters;
            DataSet ds0 = new DataSet();
            AdapterP_counter.Fill(ds0);
            DataTable counters_dt = ds0.Tables[0];
          //  ASPxProgressBar1.Maximum = counters_dt.Rows.Count; // в процессбар максимум запилим
           

            //выборка тарифов
            string tarif_sql = "SELECT `Organization`,`DateStart`,`Tarif` FROM `tarif` ORDER BY `DateStart` DESC";
            MySqlCommand command_tarif = new MySqlCommand(tarif_sql, conn);
            MySql.Data.MySqlClient.MySqlDataAdapter AdapterTar = new MySql.Data.MySqlClient.MySqlDataAdapter();
            AdapterTar.SelectCommand = command_tarif;
            DataSet ds2 = new DataSet();
            AdapterTar.Fill(ds2);
            DataTable tarif_dt = ds2.Tables[0];

            for (int a = 0; a < counters_dt.Rows.Count; a++) //переборка номеров счетчиков (всех)
            {
               //ASPxProgressBar1.Position = a;
                var counter = counters_dt.Rows[a]["id_countres"];
                //выбоорка показаний
                string sql = "SELECT `pokazaniya`.`id`,`pokazaniya`.`date`,`pokazaniya`.`pokazanie`,`pokazaniya`.`difference`,`pokazaniya`.`money`,`countres`.`tarif`,`countres`.`Coefficient` " +
                    "FROM `pokazaniya` " +
                    "LEFT OUTER JOIN `countres` ON `countres`.`id`=`pokazaniya`.`id_countres` " +
                    "WHERE  `id_countres`=" + counter + " ORDER BY `date`";
                MySqlCommand command = new MySqlCommand(sql, conn);
                // выполняем запрос и получаем ответ
                MySql.Data.MySqlClient.MySqlDataAdapter AdapterP = new MySql.Data.MySqlClient.MySqlDataAdapter();
                AdapterP.SelectCommand = command;
                DataSet ds1 = new DataSet();
                AdapterP.Fill(ds1);
                DataTable pokazaniya_dt = ds1.Tables[0];

                int count_pokazaniya = 0;
                string sql_totalCMD = "";
                decimal prev_dif = 0;

                foreach (var line in pokazaniya_dt.Rows) //переборка показаний для проверки и вычета предыдущего
                {

                    if (count_pokazaniya == 0) // Если это первое значение то его неоткуда отнимать
                    {
                        sql_totalCMD += "UPDATE `pokazaniya` SET `difference` = 0, `money`= 0 WHERE `id`= " + pokazaniya_dt.Rows[count_pokazaniya]["id"] + ";";
                        prev_dif = Convert.ToDecimal(pokazaniya_dt.Rows[count_pokazaniya]["pokazanie"]); // текущее показание
                    }
                    else
                    {
                        decimal money = 0;
                        var teper_pokaz = pokazaniya_dt.Rows[count_pokazaniya]["pokazanie"];
                        decimal raznica_pokazaniy = Convert.ToDecimal(teper_pokaz) - prev_dif; // текущее показание - пердыдущее
                        decimal fakt_potreblenie = raznica_pokazaniy * Convert.ToDecimal(pokazaniya_dt.Rows[count_pokazaniya]["Coefficient"]); // показания по счетчикам * на коеффициент трансформации счетчика


                        for (int i = 0; i < tarif_dt.Rows.Count; i++) // переборка тарифов для заполнения суммы
                        {
                            var aaa = Convert.ToString(pokazaniya_dt.Rows[count_pokazaniya]["tarif"]);
                            var bbb = Convert.ToString(tarif_dt.Rows[i]["Organization"]);
                            var ccc = Convert.ToDateTime(pokazaniya_dt.Rows[count_pokazaniya]["date"]);
                            var eee = Convert.ToDateTime(tarif_dt.Rows[i]["DateStart"]);
                            if (aaa == bbb && ccc >= eee) // Если тариф совпадает по названию поствщика и больше или = дате
                            {
                                var tarif   = Convert.ToDecimal(tarif_dt.Rows[i]["Tarif"]);
                                // var raznica_pokaz = Convert.ToDecimal(pokazaniya_dt.Rows[count_pokazaniya]["difference"]);
                                money = tarif * fakt_potreblenie;
                                break;
                            }
                        }
                        sql_totalCMD += "UPDATE `pokazaniya` SET `difference` = '" + fakt_potreblenie.ToString(nfi_e) + "', `money`='" + money.ToString(nfi_e) + "' WHERE `id`= " + pokazaniya_dt.Rows[count_pokazaniya]["id"] + ";";
                        prev_dif = Convert.ToDecimal(pokazaniya_dt.Rows[count_pokazaniya]["pokazanie"]); // текущее показание
                    }
                    count_pokazaniya++;
                }

                MySqlCommand command_upd = new MySqlCommand(sql_totalCMD, conn);
                command_upd.ExecuteNonQuery();

            }

            



            var totaltimes = DateTime.Now - totaltime;
            //  Response.Write("<script>alert('"+ totaltimes + "');</script>");
          
        }
        catch (MySqlException ex)
        {
            new log().logInsert(ex.Message);
      
        }
        finally
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }

    }


    protected void valid_pokaz (decimal pokazaniya)
    {

    }
}
 