<%@ Page Title="" Language="C#" MasterPageFile="~/Sample.Master" AutoEventWireup="true" CodeBehind="Course_Reg.aspx.cs" Inherits="Masterpage.Course_Reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:white" align="center">
             <br /> <b>&nbsp
               <a class="nav-link active" href="../admin/Admin_Page.aspx">Student List</a> &nbsp&nbsp
                <a class="nav-link active" href="../admin/AdminDashboard.aspx">Admin Home</a> &nbsp&nbsp 
       </b><br /><br /></div>
    <h2><center>Course Registration</center></h2>
    <table align="center">
        
        <tr>            
           <td> <asp:Label ID="Label2" runat="server" Text="Label">Course :</asp:Label></td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>            
        </tr>        
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Display" /></td>
            </tr>
        </table>
    
</asp:Content>
