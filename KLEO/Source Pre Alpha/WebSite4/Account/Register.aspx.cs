using Microsoft.AspNet.Identity;
using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web.UI;
using MySql.Data.MySqlClient;
using WebSite4;

public partial class Account_Register : Page
{
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        var manager = new UserManager();
        var user = new ApplicationUser() {UserName = UserName.Text};
        IdentityResult result = manager.Create(user, Password.Text);
        if (result.Succeeded)
        {
            
            //---- andalit --- регистрация еще и в базе mySQL
            MySqlConnection conn =
                new MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"]
                    .ConnectionString); // конект к скл
            try
            {
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                // random salt 10 char
                Random random = new Random();
                const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
                string randomSalt = new string(Enumerable.Repeat(chars, 10).Select(s => s[random.Next(s.Length)]).ToArray());
                // random salt 10 char

                
                var sqlDateFormat = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");


                string sql =
                    "INSERT INTO `user` (`login`,`email`,`pass`,`salt`,`unit`,`ballance`,`active`,`data_registred`) " +
                    "VALUES('"+ UserName.Text + "','" + UserName.Text + "','"+ Password.Text +"','"+ randomSalt + "', 'All_client', 0, 1, '" + sqlDateFormat + "')";

                // string sql = "SELECT `id` FROM `user` WHERE `login` ='" + UserName.Text + "'AND `pass`='" + Password.Text + "'AND `active` IS TRUE;";
                // объект для выполнения SQL-запроса
                MySqlCommand command = new MySqlCommand(sql, conn);
                // выполняем запрос и получаем ответ
                command.ExecuteNonQuery(); 
              
            }
            catch (MySqlException ex)
            {
                new log().logInsert(ex.Message);
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }


            // -- andalit --
            IdentityHelper.SignIn(manager, user, isPersistent: false);
            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);

        }
      
        else
        {
            ErrorMessage.Text = result.Errors.FirstOrDefault();
        }
    }


  
   


}