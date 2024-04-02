<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Hostname.aspx.cs" Inherits="Quickyyyyy.Hostname" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
    </style>
    <style>
    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 600px;
        
        margin: 0 auto;
        margin-top: 50px;
        margin-bottom:90px;
    }

    h2 {
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }

    .form-group {
        display: grid;
        grid-template-columns: 1fr 2fr;
        align-items: center;
        gap: 10px;
        margin-bottom: 10px;
    }

    label {
        font-weight: bold;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .button-group {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
        margin-bottom:60px;
       
    }

    .cancel-button {
        background-color: #ccc;
        color: #000;
        cursor: pointer;
        
    }

    .create-button {
        background-color: #007bff;
        color: #fff;
        cursor: pointer;
    }

    .cancel-button:hover {
        background-color: #aaa;
    }

    .create-button:hover {
        background-color: #0056b3;
    }
</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Create Hostname</h2>
        <asp:Label ID="lblMessage" runat="server" Visible="false"></asp:Label>
        <div class="form-group">
            <label for="txtHostname">Hostname:</label>
            <asp:TextBox ID="txtHostname" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="ddlDomain">Domain:</label>
            <asp:DropDownList ID="ddlDomain" runat="server">
                <asp:ListItem Text=".com" Value=".com"></asp:ListItem>
                <asp:ListItem Text=".net" Value=".net"></asp:ListItem>
                <asp:ListItem Text=".abc" Value=".abc"></asp:ListItem>
                <asp:ListItem Text=".org" Value=".bcd"></asp:ListItem>
                <asp:ListItem Text=".in" Value=".yyy"></asp:ListItem>
               
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <label for="txtIPv4">IPv4:</label>
            <asp:TextBox ID="txtIPv4" runat="server"></asp:TextBox>
        </div>
        <div class="button-group">
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" CssClass="cancel-button" />
            <asp:Button ID="btnCreateHostname" runat="server" Text="Create Hostname" OnClick="btnCreateHostname_Click" CssClass="create-button" />
        </div>
    </div>
</asp:Content>