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
            // Clear any previous error messages
            lblMessage.Visible = false;
            lblMessage.Text = "";

            // Perform client-side validation (optional)
            if (string.IsNullOrWhiteSpace(txtEmail.Text) || string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Please enter both email and password.";
                return;
            }

            string connectionString = "server=localhost;port=3306;database=hero;user id=root;password=Suraj@#95931;";
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                try
                {
                    conn.Open();

                    string email = txtEmail.Text;
                    string password = txtPassword.Text;

                    // Perform server-side validation (e.g., check for SQL injection, etc.)
                    // You may also want to hash the password and compare it with the hashed password in the database
                    string query = "SELECT COUNT(*) FROM users WHERE email = @Email AND password = @Password";
                    MySqlCommand cmd = new MySqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);

                    int count = Convert.ToInt32(cmd.ExecuteScalar());
                    if (count > 0)
                    {
                        // Login successful
                        // Set session variables
                        Session["LoggedIn"] = true;
                        Session["Username"] = email;

                        // Set authentication cookie
                        System.Web.Security.FormsAuthentication.SetAuthCookie(email, false);
                        Response.Redirect("abc.aspx");
                    }
                    else
                    {
                        // Login failed
                        lblMessage.Visible = true;
                        lblMessage.Text = "Invalid email or password.";
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
        }
    }
}
