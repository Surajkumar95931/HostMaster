<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowIP.aspx.cs" Inherits="Quickyyyyy.ShowIP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function autoRefreshPage() {
            setTimeout(function () {
                location.reload();
            }, 500000);
        }

        // Call the autoRefreshPage function when the page is loaded
        window.onload = autoRefreshPage;
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Date And Time</h2>
    <asp:TextBox ID="TextBox1" runat="server" Height="59px" Width="209px" BorderStyle="Groove"></asp:TextBox>

    <h2>Current IP Addresses</h2>
    <p><asp:Label ID="lblLocalIPAddress" runat="server" /></p>
    <p><asp:Label ID="lblPublicIPAddress" runat="server" /></p>

    <h2>Previous IP Addresses (if changed)</h2>
    <p><asp:Label ID="lblLocalIPChange" runat="server" /></p>
    <p><asp:Label ID="lblPublicIPChange" runat="server" /></p>
</asp:Content>
