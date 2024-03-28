<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Quickyyyyy.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="login-container">
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Login</h2>
        <div>
            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            <br />

            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Required="true" Width="255px"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            <br />

            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Required="true" Width="255px"></asp:TextBox>
            <br />
            <br />

          <center>  <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Height="51px" Width="120px" /></center>
            <br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        </div>
    </div>
</asp:Content>
