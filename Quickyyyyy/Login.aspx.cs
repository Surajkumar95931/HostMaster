using System;
using MySql.Data.MySqlClient;

namespace Quickyyyyy
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = "server=localhost;port=3306;database=hero;user id=root;password=Suraj@#95931;";
            MySqlConnection conn = new MySqlConnection(connectionString);

            try
            {
                conn.Open();

                string email = txtEmail.Text;
                string password = txtPassword.Text;

                string query = "SELECT COUNT(*) FROM users WHERE email = @Email AND password = @Password";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);

                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count > 0)
                {
                    // Login successful
                    Response.Redirect("abc.aspx");
                }
                else
                {
                    // Login failed
                    lblMessage.Visible = true;
                    lblMessage.Text = "Username or password is incorrect.";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Error: " + ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}
