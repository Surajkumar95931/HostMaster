<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About_Us.aspx.cs" Inherits="Quickyyyyy.About_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            transition: 0.3s;
            margin-bottom: 20px; /* Add margin between cards */
        }

        .card:hover {
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
        }

        .container {
            padding: 2px 16px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <!-- Left Card (Suraj) -->
            <div class="col-md-4">
                <div class="card">
                    <img src="imgs/new.jpg" alt="Suraj" style="max-width: 100%; max-height: 100%; width: auto; height: auto;">
                    <div class="container">
                        <h2><b>Suraj</b></h2>
                        <p>Software Engineer</p>
                    </div>
                </div>
            </div>

            <!-- Middle Card (About Us) -->
            <!--<div class="col-md-4">
                <div class="card">
                    <div class="container">
                        <h2>About Us</h2>
                        <p>This website offers domain registration services at very competitive prices. We specialize in providing reliable and affordable domain solutions to our customers.</p>
                    </div>
                </div>
            </div>
                -->
            <!-- Right Card (Akshay) -->
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <img src="imgs/new.jpg" alt="Akshay" style="width: 100%">
                    <div class="container">
                        <h2><b>Akshay</b></h2>
                        <p>Software Engineer</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- IP Address Section -->
        <div class="card">
            <div class="container">
                <h2>IP Address</h2>
                <p>An IP address is a numerical label assigned to each device connected to a computer network that uses the Internet Protocol for communication. It serves two main purposes: host or network interface identification and location addressing.</p>
            </div>
        </div>

        <!-- Dynamic IP Section -->
        <div class="card">
            <div class="container">
                <h2>Hosting</h2>
                <p>Hosting is an online service that allows you to make your website accessible on the internet. When you create a website, you need to store its files on a server so that it can be publicly accessible. This server can be provided by a hosting provider or you can host it on your own server.</p>
            </div>
        </div>
    </div>
</asp:Content>
