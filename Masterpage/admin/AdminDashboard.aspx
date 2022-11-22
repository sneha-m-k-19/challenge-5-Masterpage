<%@ Page Title="" Language="C#" MasterPageFile="~/Sample.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Masterpage.admin.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 align="Center">Admin DashBoard</h1>
        <div style="background-color:white" align="center">
             <br /> <b>&nbsp
               <a class="nav-link active" href="../admin/Admin_Page.aspx">Student List</a> &nbsp&nbsp
               <a class="nav-link active" href="../admin/Course_Reg.aspx">Course Registration</a> &nbsp&nbsp          
       </b><br />
       <br />
        </div>
        </div>
   
</asp:Content>
