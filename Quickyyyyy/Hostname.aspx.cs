using System;
using System.Web.UI;

namespace Quickyyyyy
{
    public partial class Hostname : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string localIPAddress = GetLocalIPAddress();
                txtIPv4.Text = localIPAddress;
            }
        }
        private string GetLocalIPAddress()
        {
            try
            {
                // Create a socket object to get the local IP address
                using (var socket = new System.Net.Sockets.Socket(System.Net.Sockets.AddressFamily.InterNetwork, System.Net.Sockets.SocketType.Dgram, 0))
                {
                    socket.Connect("8.8.8.8", 80); // connecting to a public IP address to get the local IP
                    System.Net.IPEndPoint endPoint = socket.LocalEndPoint as System.Net.IPEndPoint;
                    return endPoint.Address.ToString();
                }
            }
            catch (Exception ex)
            {
                return "Could not determine local IP: " + ex.Message;
            }
        }
            protected void btnCancel_Click(object sender, EventArgs e)
        {
            // Your cancel logic here
        }

        protected void btnCreateHostname_Click(object sender, EventArgs e)
        {
            // Your create hostname logic here
        }
    }
}
