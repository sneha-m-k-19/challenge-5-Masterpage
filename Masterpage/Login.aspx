<%@ Page Title="" Language="C#" MasterPageFile="~/Sample.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Masterpage.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 align="center">
        Login Page
    </h2>
    <table align="center">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="User Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr></tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextPassword" runat="server" Visible="True" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr></tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Cancel" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
