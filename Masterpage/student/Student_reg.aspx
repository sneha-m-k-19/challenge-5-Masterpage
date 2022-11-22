<%@ Page Title="" Language="C#" MasterPageFile="~/Sample.Master" AutoEventWireup="true" CodeBehind="Student_reg.aspx.cs" Inherits="Masterpage.Student_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><center>Student Registration</center></h2>
    <table align="center">
        
        <tr>            
           <td> <asp:Label ID="Label2" runat="server" Text="Label">Name :</asp:Label></td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>            
        </tr>        
        <tr>           
           <td> <asp:Label ID="Label3" runat="server" Text="Label">Email :</asp:Label></td>  
           <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
           <td> <asp:Label ID="Label4" runat="server" Text="Label">Phone Number :</asp:Label></td>
           <td> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label5" runat="server" Text="Label">Gender :</asp:Label></td>
            <td><asp:RadioButton ID="RadioButton1" runat="server" text="Female" GroupName="gender" />
            <asp:RadioButton ID="RadioButton2" runat="server" text="Male" GroupName="gender" />
            <asp:RadioButton ID="RadioButton3" runat="server" text="Others" GroupName="gender" /> </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label6" runat="server" Text="Label">Courses :</asp:Label></td>
            <td><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList> </td>
        </tr>                              
        <tr>
           <td><asp:Label ID="Label10" runat="server" Text="Label">User Name :</asp:Label></td>
           <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            
        </tr>
        <tr aria-hidden="True">
            <td><asp:Label ID="Label11" runat="server" Text="Label">PassWord :</asp:Label></td>
            <td><asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            
             <td><asp:Button ID="Button1" runat="server" OnClick="Display" Text="Submit"  /></td>
            
        </tr>
     
    </table>
</asp:Content>
