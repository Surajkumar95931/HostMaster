using System;
using MySql.Data.MySqlClient;

namespace Quickyyyyy
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string connectionString = "server=localhost;port=3306;database=hero;user id=root;password=Suraj@#95931;";
            MySqlConnection conn = new MySqlConnection(connectionString);

            try
            {
                conn.Open();

                string username = txtUsername.Text;
                string email = txtEmail.Text;
                string password = txtPassword.Text;
                int age = Convert.ToInt32(txtAge.Text); // Convert age to int
                string contactNumber = txtContactNumber.Text;
                string city = txtCity.Text;
                string address = txtAddress.Text;

                string query = "INSERT INTO users (username, email, password, age, contact_number, city, address) VALUES (@Username, @Email, @Password, @Age, @ContactNumber, @City, @Address)";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@Age", age);
                cmd.Parameters.AddWithValue("@ContactNumber", contactNumber);
                cmd.Parameters.AddWithValue("@City", city);
                cmd.Parameters.AddWithValue("@Address", address);

                cmd.ExecuteNonQuery();

                lblSuccess.Visible = true;
                lblSuccess.Text = "Registration Successful!";

                // Clear text boxes after successful registration
                ClearTextBoxes();
            }
            catch (Exception ex)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }

        private void ClearTextBoxes()
        {
            txtUsername.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtAge.Text = "";
            txtContactNumber.Text = "";
            txtCity.Text = "";
            txtAddress.Text = "";
        }
    }
}
