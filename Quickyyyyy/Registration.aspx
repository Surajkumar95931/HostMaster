<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Quickyyyyy.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>User Registration</h2>
        <div>
            <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
            <br />
            <asp:TextBox ID="txtUsername" runat="server" Required="true"></asp:TextBox>
            <br />
            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            <br />
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Required="true"></asp:TextBox>
            <br />
            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            <br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Required="true"></asp:TextBox>
            <br />
            <asp:Label ID="lblAge" runat="server" Text="Age:"></asp:Label>
            <br />
            <asp:TextBox ID="txtAge" runat="server" Required="true"></asp:TextBox>
            <br />
            <asp:Label ID="lblContactNumber" runat="server" Text="Contact Number:"></asp:Label>
            <br />
            <asp:TextBox ID="txtContactNumber" runat="server" Required="true"></asp:TextBox>
            <br />
            <asp:Label ID="lblCity" runat="server" Text="City:"></asp:Label>
            <br />
            <asp:TextBox ID="txtCity" runat="server" Required="true"></asp:TextBox>
            <br />
            <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
            <br />
            <asp:TextBox ID="txtAddress" runat="server" Required="true"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            <br />
            <asp:Label ID="lblSuccess" runat="server" ForeColor="Green" Visible="false"></asp:Label>
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        </div>
    </div>
</asp:Content>
