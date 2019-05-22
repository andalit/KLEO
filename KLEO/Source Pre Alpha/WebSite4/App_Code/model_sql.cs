using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
 
using System.Web;
using MySql.Data.MySqlClient;

/// <summary>
/// Сводное описание для model_sql
/// </summary>
public class model_sql
{
   MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString); // конект к скл

     

    public model_sql()
    {

    }
 
    
    public static DataTable sql_buildding()
    {

        int id_user = 0;
        if (HttpContext.Current.Session["user_id"] != null)
        {
            id_user = (int)HttpContext.Current.Session["user_id"];
        }

        MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString); // конект к скл
        string sql = "SELECT `id`,`title`,`type` FROM `building` WHERE `id` IN (SELECT `id_building` FROM `user_atributes` WHERE `id_user` =" + id_user + ")  ORDER BY `id`;";
        // объект для выполнения SQL-запроса
        MySqlCommand command = new MySqlCommand(sql, conn);
        // выполняем запрос и получаем ответ


        MySqlDataAdapter AdapterP = new MySqlDataAdapter();
        AdapterP.SelectCommand = command;
        DataSet ds1 = new DataSet();
        AdapterP.Fill(ds1);
        DataTable result = ds1.Tables[0];
        return result;
    }

    public static DataTable sql_temperatura() // забор температуры  
    {
         

        MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString); // конект к скл
        string sql = "SELECT `date` AS \"дата\",`value` AS \"Температура\" FROM `wather` WHERE TO_DAYS(NOW()) - TO_DAYS(`date`) <= 1;"; // выборка данных за сегодня 0-сегодня 30-последнгие 30 дней
        // объект для выполнения SQL-запроса
        MySqlCommand command = new MySqlCommand(sql, conn);
        // выполняем запрос и получаем ответ


        MySqlDataAdapter AdapterP = new MySqlDataAdapter();
        AdapterP.SelectCommand = command;
        DataSet ds1 = new DataSet();
        AdapterP.Fill(ds1);
        DataTable result = ds1.Tables[0];
        return result;
    }

    public static DataTable sql_pokzaniya() // забор температуры  
    {


        MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString); // конект к скл
        string sql = "Select * from `countres` where `id_building` in (Select `id_building` from `user_atributes` where `id_user`= 100);"; // выборка данных за сегодня 0-сегодня 30-последнгие 30 дней
        // объект для выполнения SQL-запроса
        MySqlCommand command = new MySqlCommand(sql, conn);
        // выполняем запрос и получаем ответ


        MySqlDataAdapter AdapterP = new MySqlDataAdapter();
        AdapterP.SelectCommand = command;
        DataSet ds1 = new DataSet();
        AdapterP.Fill(ds1);
        DataTable result = ds1.Tables[0];
        return result;
    }


    public int login_chek(string login, string pass)
    {
        try
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
       //     MySqlCommand cmd = new MySqlCommand("SELECT `id` FROM `user` WHERE `login` ='" + login + "'AND `pass`='" + pass + "'AND `active` IS TRUE;", conn);
       //     MySqlDataAdapter command = new MySqlDataAdapter(cmd);
       //     DataSet ds = new DataSet();
       //     command.Fill(ds);

            string sql = "SELECT `id` FROM `user` WHERE `login` ='" + login + "'AND `pass`='" + pass + "'AND `active` IS TRUE;";
            // объект для выполнения SQL-запроса
            MySqlCommand command = new MySqlCommand(sql, conn);
            // выполняем запрос и получаем ответ
            var result = command.ExecuteScalar();
            if (result != null)
            {

                // 
               
                int id = (int)result;
                return id;
            }

            //    GridViewStudent.DataSource = ds;
            //    GridViewStudent.DataBind();
            //    lbltotalcount.Text = GridViewStudent.Rows.Count.ToString();
        }
        catch (MySqlException ex)
       {
            new log().logInsert(ex.Message);
            return -1;
        }
        finally
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }
        // return 111;
        return -1;
    }



}