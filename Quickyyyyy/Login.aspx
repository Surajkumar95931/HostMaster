<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Quickyyyyy.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="login-container">
        <h2>User Login</h2>
        <div>
            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label><br />
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Required="true"></asp:TextBox><br />
            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Required="true"></asp:TextBox><br />
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        </div>
    </div>
</asp:Content>
