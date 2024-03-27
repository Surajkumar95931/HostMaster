using System;
using System.Web;

namespace Quickyyyyy
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the user is logged in (session variable is set)
                if (Session["LoggedIn"] != null && (bool)Session["LoggedIn"])
                {
                    // User is logged in, show username and logout button
                    liUsername.Visible = true;
                    lblUsername.InnerText = "Welcome, " + Session["Username"];
                    liLogout.Visible = true;

                    // Hide login and signup buttons
                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;
                }
                else
                {
                    // User is not logged in, show login and signup buttons
                    liUsername.Visible = false;
                    liLogout.Visible = false;

                    // Show login and signup buttons
                    LinkButton1.Visible = true;
                    LinkButton2.Visible = true;
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registration.aspx");
        }

        protected void LinkButtonLogout_Click(object sender, EventArgs e)
        {
            // Clear session variables and sign out the user
            Session["LoggedIn"] = false;
            Session["Username"] = null;
            System.Web.Security.FormsAuthentication.SignOut();
            Response.Redirect("~/homepage.aspx");
        }
    }
}
