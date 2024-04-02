using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quickyyyyy
{
    public partial class ShowIP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //this code for show the time
            TextBox1.Text = DateTime.Now.ToString();

            if (!IsPostBack)
            {
                // Store previous IP addresses in session variables
                if (Session["PreviousLocalIP"] == null)
                {
                    Session["PreviousLocalIP"] = GetLocalIPAddress();
                }
                if (Session["PreviousPublicIP"] == null)
                {
                    Session["PreviousPublicIP"] = GetPublicIPAddress();
                }
            }
            string localIPAddress = GetLocalIPAddress();
            string publicIPAddress = GetPublicIPAddress();

            lblLocalIPAddress.Text = "Local IP Address: " + localIPAddress;
            lblPublicIPAddress.Text = "Public IP Address: " + publicIPAddress;

            // Compare with previous IP addresses and display changes
            string previousLocalIP = Session["PreviousLocalIP"].ToString();
            string previousPublicIP = Session["PreviousPublicIP"].ToString();

            if (!previousLocalIP.Equals(localIPAddress))
            {
                lblLocalIPChange.Text = "Previous Local IP: " + previousLocalIP;
            }

            if (!previousPublicIP.Equals(publicIPAddress))
            {
                lblPublicIPChange.Text = "Previous Public IP: " + previousPublicIP;
            }
            // Update session variables with current IP addresses
            Session["PreviousLocalIP"] = localIPAddress;
            Session["PreviousPublicIP"] = publicIPAddress;

            // Store fetched IP addresses in text file
            StoreInTextFile(localIPAddress, publicIPAddress);
        }
        private void StoreInTextFile(string localIP, string publicIP)
        {
            try
            {
                // File path where IP addresses will be stored

                //  string filePath = @"C:\Users\suraj kumar\OneDrive\Desktop\Time.txt";
                string filePath = @"C:\Users\suraj kumar\source\repos\Quickyyyyy\Quickyyyyy\text\ipstore.txt";
                // Write IP addresses to the text file
                using (StreamWriter writer = new StreamWriter(filePath, true))
                {
                    writer.WriteLine($"Local IP Address: {localIP}, Public IP Address: {publicIP}, Time: {DateTime.Now}");
                }
            }
            catch (Exception ex)
            {
                // Handle exception if occurred during writing to file
                // You can log this error or display a message to the user
                Console.WriteLine("Error while storing IP addresses: " + ex.Message);
            }
        }
        private string GetLocalIPAddress()
        {
            try
            {
                // Create a socket object to get the local IP address
                using (var socket = new Socket(AddressFamily.InterNetwork, SocketType.Dgram, 0))
                {
                    socket.Connect("8.8.8.8", 80); // connecting to a public IP address to get the local IP
                    IPEndPoint endPoint = socket.LocalEndPoint as IPEndPoint;
                    return endPoint.Address.ToString();
                }
            }
            catch (Exception ex)
            {
                return "Could not determine local IP: " + ex.Message;
            }
        }
        private string GetPublicIPAddress()
        {
            try
            {
                WebClient client = new WebClient();
                string publicIP = client.DownloadString("https://api.ipify.org");
                return publicIP;
            }
            catch (Exception ex)
            {
                return "Could not determine public IP: " + ex.Message;
            }
        }
    }
}